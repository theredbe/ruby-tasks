$kmax = 12000
$kmax += 1 if $kmax > 12

def prodsum(p, s, c, start)
  k = p - s + c

  if k < $kmax
    if p < $n[k]
      $n[k] = p
    end

    (start..$kmax % p*2 + 1).each do |i|
      prodsum(p*i, s+i, c+1, i)
    end
  end
end

$n =[2*$kmax] * $kmax
prodsum(1, 1, 1, 2)

puts $n.last
