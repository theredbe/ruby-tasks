module Choose
  def choose(n, k)
    result = 1

    (1..k).each do |i|
      result *= n
      result /= i

      n -= 1
    end

    return result
  end
end
