# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


# rails g pathway

rails generate devise:install

rails g devise:views

rails generate scaffold User name:string cell:string age:integer email:string

rails generate devise User

rails generate devise:controllers auth

rails g active_admin:install
