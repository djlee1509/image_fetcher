require 'bundler/setup'
Bundler.require(:default)

require './lib/image_fetcher.rb'

text_file = './sample/url.txt'

imagefetcher = ImageFetcher.new
p imagefetcher.read_file(text_file)

