def echo(string)
  return string
end

def shout(string)
  return string.upcase
end

def repeat(string, times=1)
  if times == 1
    return  string + " " +  string
  else
    sentence = ""
    until times == 0
      sentence = sentence + string + " "
      times -= 1
    end
    sentence = sentence[0...-1]
    return sentence
  end
end

def start_of_word(word, range=1)
  array = word.split("")
  sentence = ""
  idx = 0
  until range == 0
    sentence = sentence + array[idx]
    idx += 1
    range -= 1
  end
  return sentence
end

def first_word(string)
  string = string.split("")
  idx = 0

  sentence = ""
  until idx == string.length
    sentence = sentence << string[idx]
    if string[idx] == " "
      break
    end
    idx += 1
  end
  return sentence.chop
end

def titleize(sentence)
  little_words = %w(end over and the)
  sentence.capitalize.gsub(/(\w+)/) do |word|
    little_words.include?(word) ? word : word.capitalize
  end
end
