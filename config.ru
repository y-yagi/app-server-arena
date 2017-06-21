require 'rubygems'
require 'bundler'
require 'sinatra/base'
require 'yaml'
require 'oauth'
require 'pry' unless ENV['RACK_ENV'] == 'production' # No pry in prod!
require 'json'
require 'logger'
require 'passenger-rails'
require 'unicorn-rails'
require 'active_record'
require 'tilt/erb'
require_relative 'user'

Bundler.require(ENV['RACK_ENV'] || :default)

ActiveRecord::Base.clear_active_connections!
ActiveRecord::Base.logger = Logger.new(STDOUT)
ActiveRecord::Base.logger.level = ENV['RACK_ENV'] == 'production' ? :info : :debug
ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'tmp/db', pool: 100)

require './app.rb'
run AppServerArena
