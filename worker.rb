require 'rubygems'
require 'bundler/setup'
require 'sidekiq'
require 'sidekiq-limit_fetch'

Sidekiq::Queue['default'].limit = 1

class Worker
  include Sidekiq::Worker
end
