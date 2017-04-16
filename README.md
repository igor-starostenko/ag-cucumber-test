# ag-cucumber-test

## Preconditions ##
* Clone repo
```
gem install bundler
bundle install
```
* You may need to install PhantomJS
```
brew install phantomjs
```

## Run Test Suit ##
To run Cucumber in production use this command:
```
cucumber TEST_ENV=prd
```

### Using different drivers ###
Framework runs headless using Poltergeist by default. To run a different driver use DRIVER environment variable:
```
cucumber TEST_ENV=prd DRIVER=selenium
```
Supported drivers:
- poltergeist
- selenium

Make sure you have chromedriver installed if you want to use Selenium:
```
npm install -g chromedriver
```
