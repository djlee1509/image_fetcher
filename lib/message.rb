class Message

  def wrong_number_of_arguments(num)
    return "Error! #{num} arguments provided. Requires only one argument, plain text file which contains the list of URLs."
  end


  def one_argument
    return "Success!"
  end
end
