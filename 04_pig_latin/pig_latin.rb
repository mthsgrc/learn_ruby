#write your code here
def translate str
  newStr = ""

  if str.include? " "
    splittedWord = str.split(" ")
    # puts splittedWord.inspect
    str = splittedWord
    str.each do |str|

      if str[0].index(/[aeiou]/)
        newStr += str + "ay "

      elsif str[0].index(/[^aeiou]/) and str[1].index(/[aeiou]/) and str[0..1].index(/[^qu]/)
        toAdd = str.slice!(0)
        newStr += str + toAdd + "ay "

      elsif str[0].index(/[^aeiou]/) and str[1].index(/[^aeiou]/) and str[2].index(/[aeiou]/) and str[1..2].index(/[^qu]/)
        toAdd = str.slice!(0..1)
        newStr += str + toAdd + "ay "

      elsif str[0].index(/[^aeiou]/) and str[1].index(/[^aeiou]/) and str[2].index(/[^aeiou]/)
        toAdd = str.slice!(0..2)
        newStr += str + toAdd + "ay "

      elsif str[0..1] == "qu"
        toAdd = str.slice!(0..1)
        newStr += str + toAdd + "ay "

      elsif str[0].index(/[^aeiou]/) and str[1..2].index(/[qu]/)
        toAdd = str.slice!(0..2)
        newStr += str + toAdd + "ay "

      end

    end

    return newStr.strip.to_s

  end


  #  translates a word beginning with a vowel
  if str[0].index(/[aeiou]/)
    newStr = str + "ay "

    #  translates a word beginning with a consoant
  elsif str[0].index(/[^aeiou]/) and str[1].index(/[aeiou]/) and str[0..1].index(/[^qu]/)
    toAdd = str.slice!(0)
    newStr = str + toAdd + "ay "

    #  translates a word beginning with two consonants
  elsif str[0].index(/[^aeiou]/) and str[1].index(/[^aeiou]/) and str[2].index(/[aeiou]/) and str[1..2].index(/[^qu]/)
    toAdd = str.slice!(0..1)
    newStr = str + toAdd + "ay "


    #  translates a word beginning with three consonants
  elsif str[0].index(/[^aeiou]/) and str[1].index(/[^aeiou]/) and str[2].index(/[^aeiou]/)
    toAdd = str.slice!(0..2)
    newStr += str + toAdd + "ay "

    # qu as single phoneme
  elsif str[0..1] == "qu"
    toAdd = str.slice!(0..1)
    newStr = str + toAdd + "ay "
    return newStr.strip

    # qu preceded by consoant
    # square = aresquay
  elsif str[0].index(/[^aeiou]/) and str[1..2].index(/[qu]/)

    toAdd = str.slice!(0..2)
    newStr += str + toAdd + "ay "
    return newStr.strip

  end

  return newStr.strip.to_s
end

# translate "square"

# translate "quiet"

def pig_latin(str)
  if str[0].index(/[aeiou]/)
    newStr = str + "ay "

    #  translates a word beginning with a consoant
  elsif str[0].index(/[^aeiou]/) and str[1].index(/[aeiou]/) and str[0..1].index(/[^qu]/)
    toAdd = str.slice!(0)
    newStr = str + toAdd + "ay "

    #  translates a word beginning with two consonants
  elsif str[0].index(/[^aeiou]/) and str[1].index(/[^aeiou]/) and str[2].index(/[aeiou]/) and str[1..2].index(/[^qu]/)
    toAdd = str.slice!(0..1)
    newStr = str + toAdd + "ay "


    #  translates a word beginning with three consonants
  elsif str[0].index(/[^aeiou]/) and str[1].index(/[^aeiou]/) and str[2].index(/[^aeiou]/)
    toAdd = str.slice!(0..2)
    newStr += str + toAdd + "ay "

    # qu as single phoneme
  elsif str[0..1] == "qu"
    toAdd = str.slice!(0..1)
    newStr = str + toAdd + "ay "
    return newStr.strip

    # qu preceded by consoant
    # square = aresquay
  elsif str[0].index(/[^aeiou]/) and str[1..2].index(/[qu]/)

    toAdd = str.slice!(0..2)
    newStr += str + toAdd + "ay "
    return newStr.strip

  end
end
