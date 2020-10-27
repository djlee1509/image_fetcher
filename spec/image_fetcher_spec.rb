require "../lib/image_fetcher.rb"


describe ImageFetcher do
  it "expects to read text file and return the list of URLs" do
    imagefetcher = ImageFetcher.new

    expect(imagefetcher.read_file('./../sample/url.txt')).to match_array([
      "https://farm4.staticflickr.com/3894/15008518202_c265dfa55f_h.jpg",
      "https://farm4.static.flickr.com/3221/2658147888_826edc8465.jpg",
      "https://live.staticflickr.com/7372/12502775644_acfd415fa7_w.jpg"
    ])
  end
end
