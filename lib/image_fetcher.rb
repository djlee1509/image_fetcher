require 'open-uri'


class ImageFetcher

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


  def download_image(url, image_name)
    Dir.mkdir('./images') unless Dir.exist?('./images')
    dest = File.join('./images', image_name)

    open(url) do |u|
      File.open(dest, 'wb') do |f|
        f.write(u.read)
      end
    end
  end

end
