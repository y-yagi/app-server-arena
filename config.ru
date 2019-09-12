require 'rubygems'
require 'bundler'
require 'sinatra/base'
require 'yaml'
require 'oauth'
require 'json'
require 'logger'
require 'active_record'
require_relative 'user'


Bundler.require(ENV['RACK_ENV'] || :default)

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'tmp/db')
ActiveRecord::Base.logger = Logger.new(STDOUT)

require './app.rb'
run AppServerArena
