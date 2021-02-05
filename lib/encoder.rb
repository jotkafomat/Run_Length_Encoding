class Encoder
  def get_length(string)
    string.length
  end
  def get_first_letter(string)
    string.chr
  end
  def get_first_letter_and_length(string)
    "#{get_first_letter(string)}" + "#{get_length(string)}"
  end
  


end
