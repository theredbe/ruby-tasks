require_relative 'utils/permutations.module'
include Permutations

require_relative "utils/partions.module"
include Partions

require 'prime'

$perm = [1, 2, 3, 4, 5, 6, 7, 8, 9]

sets = 0
loop do
  sets += partions(0, 0)
break if !permutation()

end

puts 'There are ', sets, ' sets'
