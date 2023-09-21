# DESCRIPTION link --> https://www.codewars.com/kata/54b724efac3d5402db00065e

require_relative 'morse_code'

def decode_morse(morsecode)
  # ws means "whitespace"
  morsecode.gsub!('  ', ' ws ')

  morsecode.split.map! do |c|
    if c.match?('ws')
      ' '
    else
      MORSE_CODE[c]
    end
  end.join.strip.upcase
end
