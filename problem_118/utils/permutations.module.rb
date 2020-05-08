module Permutations
  require_relative "swap.module"
  include Swap

  def permutation
    n = $perm.length()
    i = n - 1
  
    while $perm[i-1] >= $perm[i] do
      i -= 1
      return false if i == 0
    end
  
    j = n
  
    while $perm[j-1] <= $perm[i-1] do
      j -= 1
    end
  
    swap(i - 1, j - 1)
  
    i += 1
    j = n
  
    while i < j do
      swap(i - 1, j - 1)
      i += 1
      j -= 1
    end
  
    return true
  end
end
