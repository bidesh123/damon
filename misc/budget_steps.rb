Given /^an active session$/ do
  Time.zone = 'Pacific Time (US & Canada)'
  User.current_user = User.first || Factory.create_user
end
Given /^an active session with timezone "([^\"]*)"$/ do |timezone|
  Time.zone = timezone
  User.current_user = User.first || Factory.create_user
end

Given /^a budget named "([^\"]*)" with a total of "([^\"]*)"$/ do |budget_name, budget_total|
  @account_type = AccountType.active.first || Factory.create_account_type
  @account_type.save!
  @account = Factory.create_account(:code => budget_name, :name => budget_name, :account_type => @account_type)
  @account.save!
  @period = Factory.create_period(:account_type => @account_type, :start_date => Time.now - 2.days, :end_date => Time.now + 2.days, :is_open => true)
  @period.save!
  @budget_line = Factory.create_budget_line(:period => @period, :segments_as_string => budget_name)
  @budget_line.set_amount = budget_total
  @budget_line.save!
  @budget_line.reload
end


Given /^I create(?:d)? a purchase order$/ do
  @current = @po = Factory.create_order_header(:supplier => Factory.create_supplier)
  @po.supplier.activate!
  @uom = Uom.first || Factory.create_uom
  @po.save!
end

Given /^the po has an amount based line$/ do
  @current = @po_line = Factory.create_order_amount_line(:description => "amount based line", :period => @period, :price => Money.new(42, 'USD'))
  @po_line.save!
  @po.order_lines << @po_line
end
Given /^the po has a quantity based line$/ do
  @current = @po_line = Factory.create_order_quantity_line(:description => "quantity based line", :period => @period, :quantity => 1, :uom => @uom, :price => Money.new(42, 'USD'))
  @po_line.save!
  @po.order_lines << @po_line
end

Given /^(?:a |an )?amount of "([^\"]*)"$/ do |amount|
  @current.price = Money.new(amount, 'USD')
end

Given /^(?:a |an )?price of "([^\"]*)"$/ do |price|
  @current.price = Money.new(price, 'USD')
end

Given /^(?:a |an )?quantity of "([^\"]*)"$/ do |qty|
  @current.quantity = qty.to_i
end

Given /^(?:a |an )?account of "([^\"]*)"$/ do |code|
  @current.account = Account.find_by_code(code)
end


Given /^the po is issued$/ do
  @po.order_lines.collect(&:save!)
  @po.save!
  @po.reload
  @po.issue_without_send!
  assert @po.issued?
end


When /^I create a partial invoice against the order line for "([^\"]*)"$/ do |amount|
  @inv_line = InvoiceLine.create_from_order_line(@po_line, amount.to_i)
  @invoice = Factory.create_invoice_header(:supplier => @po.supplier, :account_type => @account_type)
  @invoice.invoice_lines << @inv_line
  @inv_line.invoice_header = @invoice
  @invoice.save!
  @invoice.submit!
  assert_equal 'approved', @invoice.status
end















# Given /^a purchase order(?: with ([.*]))$/ do |input_for_lines|
#   order_lines = parse_order_lines(input_for_lines)
# end
# 
# def parse_order_lines(input)
#   @lines = []
#   case input
#   when /an (amount|quantity) based line/
#     @lines << @line if @line
#     @line = Factory.send("create_#{$1}_line")
#     parse_order_line(input )
#   lines =~ //
#     with 
#    /(?:a|an)? ([\w\s]+) (of|\=|equaling) "([^\"]*)"/ and 
#    account name of "([^\"]*)"$/ do |arg1, arg2|
#   # 
# end

#  with "([^\"]*)" line(?:s)? totaling "([^\"]*)" with account "([^\"]*)"$/ do |lines, po_total, account_name|
#   num_of_lines = lines.match(/\d+/).to_s
#   type_of_line = lines.match(/amount|quantity/).to_s
#   type_of_line = 'quantity' if type_of_line.blank?
#   @po.save!
#   @po.issue_without_send!
#   assert @po.issued?
# end


Then /^the order lines should be against the budget "([^\"]*)"$/ do |budget_name|
  @po.order_lines.each do |line|
    assert line.budget_line
    assert_equal budget_name, line.budget_line.code
  end
end



When /^I create an invoice for "([^\"]*)"$/ do |amount|
  @invoice = Factory.create_invoice_header(:supplier => @po.supplier)
  @invoice.save!
  @invoice.invoice_lines << InvoiceLine.create_from_order_line(@po.order_lines.first, amount.to_i)
  @invoice.submit!
  assert_equal 'approved', @invoice.status
end

When /^I create an(?:other)? invoice for "([^\"]*)" that impacts "([^\"]*)"$/ do |amount, account_name|
  @invoice = Factory.create_invoice_header(:supplier => @po.supplier, :account_type => @account_type)
  @invoice.save!
  line = InvoiceLine.create_from_order_line(@po.order_lines.first, amount.to_i)
  line.invoice_header = @invoice
  line.save!
  @invoice.invoice_lines(true)
  @invoice.submit!
  assert_equal 'approved', @invoice.status
  assert_equal @invoice.invoice_lines.first.account.code, account_name
end

Then /^the budget remaining for budget\-line "([^\"]*)" should be "([^\"]*)"$/ do |budget_line, budget_impact|
  assert_equal budget_impact.to_f, BudgetLine.find_by_code(budget_line).remaining.amount.to_f
end

