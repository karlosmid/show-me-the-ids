# Quality assistance for show me the ids extension

## Environment

To run the [Selenium webdriver tests](http://docs.seleniumhq.org/projects/webdriver/) you will have to install Ruby (look at `.ruby-version` and `ruby-gemset` files for the exact version), the latest versions of Firefox and Chrome. The easiest way to install Ruby on Linux/Unix/MacOs is [RVM](https://rvm.io/) and on Windows [RubyInstaller](http://rubyinstaller.org/downloads).  

MacOs requires XCode, and Xcode command line tools. To install XCode cmd line tools, choose XCode->Preferences->Downloads.
After you have installed latest rvm (or if you already have one be sure to check for the [latest version](https://rvm.io/rvm/upgrading/)):

    rvm install ruby_from_dot_ruby-version_file

Clone repository:

    git clone git@github.com:karlosmid/show-me-the-ids.git

Install required gems:

    cd show-me-the-ids
    bundle install

To update to latest gem versions, run

    bundle update

## Windows environment

Install [github for windows](http://windows.github.com/). Notice github shell program.  
Install Ruby [RubyInstaller](http://rubyinstaller.org/downloads) and appropriate development kit. For Ruby leave default folder and check all three checkboxes. For devkit do not leave default extract folder, at the add end some descriptive name. For devkit follow installation [instructions](https://github.com/oneclick/rubyinstaller/wiki/Development-Kit).  
Install [ansicon](http://qastuffs.blogspot.com/2011/02/how-to-install-ansicon-for-cucumber-to.html)  
Install 32 or 64 bit [IEDriverServer](https://code.google.com/p/selenium/wiki/InternetExplorerDriver)  

Go to step clone repository.  

Install required gems:

    cd show-me-the-ids
    gem install bundler
    bundle install

To update installed gems run

    gem update bundle
    bundle update


## Browser drivers

To run test in headless mode (when you have need for speed), you should install latest [phantomJS](http://phantomjs.org/download.html).
phantomjs binary must be in you os system path. For linux this is /usr/local/bin/ folder and for Windows add browser driver folder to windows path.  

To run browser tests in Chrome, you have to download latest [chromedriver](http://chromedriver.storage.googleapis.com/index.html), unzip it and put it on system path (follow phantomjs instructions above).

Prepare environment:

    touch config/application.yml

application.yml content:

    # for testing
    SITE: https://qa.lawfirmmatrix.com
    BROWSER_LABEL: chrome
    PAGE_TIMEOUT: 5

To run a single test enter `cucumber test/features/check_ids.feature`.

# Git workflow

We are using following [workflow](http://zagorskisoftwaretester.blogspot.com/2013/09/my-git-workflow.html)
