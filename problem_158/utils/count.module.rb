module Count
  require_relative 'choose.module'
  include Choose

  def count(n, alphabet)
    return 0 if (n > alphabet)

    result = 0

    (1..n-1).each do |i|
      result += choose(n, i) - 1
    end

    return result * choose(alphabet, n)
  end
end
