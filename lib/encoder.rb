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

  def string_to_list(string)
    string.chars
  end

  def is_all_as?(string)
    string_to_list(string).uniq.count == 1 &&
    string_to_list(string).uniq.first == "a"
  end

  def is_all_this_letter?(string, letter)
    string_to_list(string).uniq.count == 1 &&
    string_to_list(string).uniq.first == letter
  end

end
