module Count
  require_relative 'choose.module'
  include Choose

  def count(n, alphabet_size)
    return 0 if (n > alphabet_size)

    result = 0

    (1..n-1).each do |i|
      result += choose(n, i) - 1
    end

    return result * choose(alphabet_size, n)
  end
end
