require 'prime'

perm = [1, 2, 3, 4, 5, 6, 7, 8, 9]

def partions(startIndex, prev)
  count = 0
  
  for i in (startIndex, perm.length()) do
    number = 0
    for j in (startIndex, i) do
      number = number * 10 + perm[j]
    end

    next if (number < prev)
    next if number.isPrime?
    return count + 1 if (i == (perm.length() - 1))

    count += partions(i + 1, number)
  end

  return count
end
