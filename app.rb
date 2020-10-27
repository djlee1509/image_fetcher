require 'bundler/setup'
Bundler.require(:default)

require './lib/image_fetcher.rb'

text_file = './sample/url.txt'

imagefetcher = ImageFetcher.new


if ARGV.length == 1
  puts "Script "
  text_file = ARGV[0]
  imagefetcher.fetch_image(text_file)
  exit
else
  puts "#{ARGV.length} arguments provided. Requires only one argument, plain text file which contains the list of URLs."
end
