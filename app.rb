require 'bundler/setup'
Bundler.require(:default)

require './lib/main.rb'

main = Main.new
main.start


