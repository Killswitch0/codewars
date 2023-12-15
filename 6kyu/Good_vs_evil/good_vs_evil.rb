# https://www.codewars.com/kata/52761ee4cffbc69732000738

GOOD_POWER = [1, 2, 3, 3, 4, 10].freeze
EVIL_POWER = [1, 2, 2, 2, 3, 5, 10].freeze

def good_vs_evil(good, evil)
  good_powers = good.split.map.with_index { |warrior, i| warrior.to_i * GOOD_POWER[i] }.sum
  evil_powers = evil.split.map.with_index { |warrior, i| warrior.to_i * EVIL_POWER[i] }.sum

  if good_powers == evil_powers
    'Battle Result: No victor on this battle field'
  elsif good_powers > evil_powers
    'Battle Result: Good triumphs over Evil'
  else
    'Battle Result: Evil eradicates all trace of Good'
  end
end

p good_vs_evil('1 0 0 0 0 0', '1 0 0 0 0 0 0')  # 'Battle Result: No victor on this battle field'
p good_vs_evil('0 0 0 0 0 10', '0 1 1 1 1 0 0') # 'Battle Result: Good triumphs over Evil'
p good_vs_evil('0 0 0 0 0 10', '0 1 1 1 1 0 0') # 'Battle Result: Good triumphs over Evil'