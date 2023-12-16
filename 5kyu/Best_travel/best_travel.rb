# https://www.codewars.com/kata/55e7280b40e1c4a06d0000aa

def choose_best_sum(t, k, ls)
    ls.combination(k).to_a.map(&:sum).select { |n| n <= t }.max
end

ts = [50, 55, 56, 57, 58]
p choose_best_sum(163, 3, ts) # 163

ts = [50]
p choose_best_sum(163, 3, ts) # nil

ts = [91, 74, 73, 85, 73, 81, 87]
p choose_best_sum(230, 3, ts) # 228