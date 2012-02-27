
Cucumber usage and tips

= Requirements:

JRuby installed and in your path
  - Install JRuby outside of RVM.  This is because you'll need to run MRI (or REE) ruby and JRuby
    simultaneously.  Use gem install jruby or download from the website

In addition to the standard bundle install that you'll need to run, you will also need to ensure
the jruby environment contains the right gems with:

$ jruby -S bundle



= Running the tests

to run all cucumber steps,
  $ cucumber
or
  $ cucumber features

When working on a feature or scenario, you can specify a file or a file and line number.
  $ cucumber features/login.feature
  $ cucumber features/login.feature:30


= Writing scenarios and steps
  Transactional behavior is on by default, but disabled for @javascript or @no-txn tagged scenarios, database cleaner is
  used and we have a step to reinitialize the database using the blank seeds.

  When writing a scenario that requires javascript evaluation, add the @javascript tag and the scenario will be
  run using a different driver that evaluates the js.  The downside is that this is much slower than the native
  driver.


TIPS:
  use -f pretty to see details of the test run which is immensely helpful to see details of the failures.
  config/cucumber.yml should have this set as default but if you use a different cucumber profile you may need to
  set it manually.

  if you want to see a browser popup and do the scenarios that are tagged with @javascript,
  run like so:
  SHOWBROWSER=true cucumber features/

