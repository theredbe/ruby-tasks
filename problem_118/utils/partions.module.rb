module Partions
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
end
