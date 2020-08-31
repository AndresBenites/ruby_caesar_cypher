def caesar_cipher(string, shift)
  str_array = string.split("")

  convert_array = []

  str_array.each do |letter|
    convert_array.push(letter.ord)
  end

  convert_array = convert_array.map do |code|
    if code < "A".ord
      code = code.chr
    elsif code > "z".ord
      code = code.chr
    elsif code > "Z".ord && code < "a".ord
      code = code.chr
    elsif code >= "A".ord && code <= "Z".ord
      code += shift
      code = u_code_too_low(code) if code < "A".ord
      code = u_code_too_high(code) if code > "Z".ord
      code = code.chr
    elsif code >= "a".ord && code <= "z".ord
      code += shift
      code = l_code_too_low(code) if code < "a".ord
      code = l_code_too_high(code) if code > "z".ord
      code = code.chr
    end
  end
  return convert_array.join
end

def l_code_too_high(code)
  # p "lcodetoohigh " + code.to_s
  while code > 122
    code -= 26
  end
  return code
end

def l_code_too_low(code)
  # p "lcodetoolow " + code.to_s
  while code < 97
    code += 26
  end
  return code
end

def u_code_too_high(code)
  # p "ucodetoohigh " + code.to_s
  while code > 90
    code -= 26
  end
  return code
end

def u_code_too_low(code)
  # p "ucodetoolow " + code.to_s
  while code < 65
    code += 26
  end
  return code
end

puts caesar_cipher("Ebiil Qebob!!!!", -75)
