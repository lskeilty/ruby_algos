def digital_root(number)
  # sum = 0
  number = number.to_s.split('').map(&:to_i)
  sum = number.reduce(:+) #{|sum, num| sum + num}
  # sum #17
  sum >= 10 ? digital_root(sum) : sum
  # if sum >=10
  #   digital_root(sum)
  # else
  #   sum
  # end
end