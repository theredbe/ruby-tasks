module Swap
  def swap(i, j)
    temp = $perm[i]
    $perm[i] = $perm[j]
    $perm[j] = temp
  end
end
