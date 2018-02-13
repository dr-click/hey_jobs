# HeyJobs

###### Service which is capable of detecting discrepancies between the state of the campaigns on the app side and ads on the AdService side.

## Project Details:

* Environment

  > Ruby 2.5.0

  > Rails 5.1.4

  > PostgreSQL

* Project dependencies

    > httparty: Makes http fun again!


## Getting Started

  You'll need to do a few things to get up-and-running.  Here are a few items:

  * Install all the necessary gems with ```bundle install```
  * Create your database with ```rails db:create```
  * Update your database with ```rails db:migrate```
  * Start your web server with ```rails server:start```

---

### Test

    Using RSpec and some other testing tool to reach the 97% code coverage, to run the test run the following command:
    ```
    rspec
    ```
    Follow this path to check the code coverage results: APP_ROOT/coverage/index.html


* Test dependencies

    > rspec: Testing framework for Rails

    > faker: A library for generating fake data such as names, addresses, and phone numbers

    > factory_girl_rails: Fixtures replacement with a straightforward definition syntax

    > simplecov: Code coverage for Ruby

    > selenium-webdriver: WebDriver is a tool for writing automated tests of websites

    > webmock: Library for stubbing and setting expectations on HTTP requests in Ruby.

---

### Changes todo later

  * Include API documentation tools (ApiPie/Swagger)
  * Add API Authentication and Authorization Filters
  * Add the AdService REST API URL to env variables
  * Add Integration test using Rspec

---

### Notes

  * If the project target is API only (Won't include UI) we can use "Rails 5 API-only Application"
  * Using scaffold for just speeding-up the setup and complete the project in short time.
  * We returns JSON for API calls
  * We have 100% code coverage
  * Application deployed  to : https://hey-jobs.herokuapp.com

---

### Fixes

    * List exist AdServices but their Campaigns are not exist

---

### Important URLs: Fully JSON support for actions (index, show, new, create, edit, update, delete)

  * Manage Jobs in the system: /jobs and /jobs.json
  * Manage Campaigns in the system: /campaigns and /campaigns.json
  * Compare results : /campaigns/compare and /campaigns/compare.json

---

### Compare JSON attributes

  * "id": Campaign ID
  * "job_id": Job ID
  * "status": Campaign Status (The app side)
  * "ad_service_status": Campaign Status (The AdService side)
  * "external_reference": Campaign Reference
  * "ad_description": Campaign Description

---

### Important files contains Logic

  * /app/models/concerns/ad.rb
  * /app/controllers/concerns/ad_service.rb
  * /app/controllers/concerns/compare_service.rb
