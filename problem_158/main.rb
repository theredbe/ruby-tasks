require_relative 'utils/count.module.rb'
include Count

alphabet = 26
size = 3

result = 0
(2..size).each do |i|
  current = count(i, alphabet)

  result = current if (result < current)
end

puts result
