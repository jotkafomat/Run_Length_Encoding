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

  def is_all_first_letter?(string)
    letter = get_first_letter(string)
    is_all_this_letter?(string, letter)
  end

  def get_length_of_first_run(string)
    return get_length(string) if is_all_first_letter?(string)

    letter = get_first_letter(string)
    accumulator = 0
    array = string_to_list(string)

    while array.first == letter
      accumulator += 1
      array.shift
    end

    accumulator
  end

  def get_first_run(string)
    string.slice(0,get_length_of_first_run(string))
  end

  def get_after_first_run(string)
    number = get_length_of_first_run(string)
    length = get_length(string) - number
    string[number, length]
  end


end
