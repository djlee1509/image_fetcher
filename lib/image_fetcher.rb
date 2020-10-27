# require 'open-uri'
require 'down'


class ImageFetcher

  def main(text_file)
    urls = read_file(text_file)
    urls.each do |url|
      img_name = url.split('/')[-1]
      download_image(url, img_name)
    end
  end

  # Read Text file and return list of URLs in an array.
  def read_file(text_file)
    url_list = []
    File.open(text_file, "r") do |f|
      f.each_line do |line|
        url_list.append(line.delete("\n"))
      end
    end

    return url_list
  end


  # Donwload image given URL and image name.
  def download_image(url, image_name)
    save_path = './images'

    Dir.mkdir(save_path) unless Dir.exist?('./images')
    dest = File.join(save_path, image_name)

    Down.download(url, destination: dest)


    # open(url) do |img|
    #   File.open(dest, "wb") do |f|
    #     f.write(img.read)
    #   end
    # end
  end

end
