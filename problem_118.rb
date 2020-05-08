require 'prime'

$perm = [1, 2, 3, 4, 5, 6, 7, 8, 9]

def swap(i, j)
  temp = $perm[i]
  $perm[i] = $perm[j]
  $perm[j] = temp
end

def permutation()
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

def partions(startIndex, prev)
  begin
    count = 0

    (startIndex..$perm.length()-1).each do |i|
      number = 0

      (startIndex..i).each do |j|
        number = number * 10 + $perm[j]
      end

      next if number < prev
      next if !Prime.prime?(number)

      if i == ($perm.length()-1)
        return count + 1
      end

      count += partions(i + 1, number)
    end

    return count

  rescue TypeError => e
    puts 'Type Error was occured: ', err.message
  end
end

sets = 0
loop do
  sets += partions(0, 0)
break if !permutation()

end

puts 'There are ', sets, ' sets'
