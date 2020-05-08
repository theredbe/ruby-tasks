def nCr(n, r)
  r = min(r..n-r)
  numerable = (n..n-r).step(2).reduce(1, :*)
  denom = (1..r+1).reduce(1, :*)

  return numerable / denom
end

def lexicographically_after_total(alpha)
  total = 0
  (alpha).each do |i|
    (i + 1..alpha).each do |j|
      total += 2**i * 3**(j-i-1) * 2**(alpha-j-1)
    end
  end

  return total
end

