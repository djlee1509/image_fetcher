# require 'open-uri'
require 'down'


class ImageFetcher

  def initialize
    @url_list = []
  end

  def fetch_image(text_file)
    urls = read_file(text_file)
    img_regex = /([.|\w|\s|-])*\.(?:jpg)/
    urls.each do |url|
      img_name = url.match(img_regex)
      download_image(url, "image_#{img_name.to_s}")
    end
  end


  # Read Text file and return list of URLs in an array.
  def read_file(text_file)
    File.open(text_file, "r") do |f|
      f.each_line do |line|
        @url_list.append(line.delete("\n"))
      end
    end

    return @url_list
  end


  # Donwload image given URL and image name.
  def download_image(url, image_name)
    save_path = './images'

    Dir.mkdir(save_path) unless Dir.exist?('./images')
    dest = File.join(save_path, image_name)

    Down.download(url, destination: dest)
  end

end
