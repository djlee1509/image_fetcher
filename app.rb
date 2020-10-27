require 'bundler/setup'
Bundler.require(:default)

require './lib/image_fetcher.rb'

text_file = './sample/url.txt'

imagefetcher = ImageFetcher.new
imagefetcher.main(text_file)
