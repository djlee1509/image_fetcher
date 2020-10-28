require_relative '../lib/main.rb'


describe Main do
  context "with a valid number" do
    before :each do
      @app = Main.new
    end

    it "returns error message with other than one argument" do
      expect(@app.main(5)).to eq("Error! 5 arguments provided. Requires only one argument, plain text file which contains the list of URLs.!")
    end
  end
end
