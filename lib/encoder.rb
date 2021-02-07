class Encoder
  def get_length(string)
    string.length
  end

  def get_first_letter(string)
    string.chr
  end

  def get_first_letter_and_length(string)
    get_first_letter(string) + get_length(string).to_s
  end

  def string_to_list(string)
    string.chars
  end

  def is_all_as?(string)
    string_to_list(string).uniq == ["a"]
  end

  def is_all_this_letter?(string, letter)
    string_to_list(string).uniq.count == 1 &&
    string_to_list(string).uniq.first == letter
  end

  def is_all_first_letter?(string)
    first_letter = get_first_letter(string)
    is_all_this_letter?(string, first_letter)
  end

  def get_length_of_first_run(string)
    return get_length(string) if is_all_first_letter?(string)

    first_letter = get_first_letter(string)
    accumulator = 0
    array = string_to_list(string)

    while array.first == first_letter
      accumulator += 1
      array.shift
    end

    accumulator
  end

  def get_first_run(string)
    string.slice(0,get_length_of_first_run(string))
  end

  def get_after_first_run(string)
    length_of_first_run = get_length_of_first_run(string)
    length_of_remaining_string = get_length(string) - length_of_first_run
    string[length_of_first_run, length_of_remaining_string]
  end

  def get_all_runs(string)
    result = []
    working_string = string
    while get_length_of_first_run(working_string) > 0
      result.push(get_first_run(working_string))
      working_string = get_after_first_run(working_string)
    end

    result
  end

  def get_lengths_of_all_runs(string)
    get_all_runs(string).map { |item|
      item.length
    }
  end


end
