require 'sidekiq'
require 'redis'
require 'pry'

require_relative 'hard-worker.rb'
binding.pry
redis = Redis.new

HardWorker.perform_async('bob', 5)

