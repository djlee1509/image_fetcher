require_relative '../lib/message'
require_relative '../lib/image_fetcher'


class Main

  def initialize
    @message = Message.new
    @imagefetcher = ImageFetcher.new
  end


  def start
    num = ARGV.length
    main(num)
  end


  def main(num)
    if num == 1
      text_file = ARGV[0]
      @imagefetcher.fetch_image(text_file)
      puts @message.one_argument
      exit
    else
      puts @message.wrong_number_of_arguments(num)
      exit
    end
  end

end
