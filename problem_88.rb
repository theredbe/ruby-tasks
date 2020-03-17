$kmax = 5

if $kmax > 12
  $kmax += 1
end

$n = 2*$kmax * $kmax

def prodsum(p, s, c, start)
  k = p - s + c
  if k < $kmax
    if p < $n[k]
      $n[k] = p
      (start..($kmax/p*2).to_f + 1).each do
        prodsum(p*i, s+i, c+1, i)
      end
    end
  end
end
