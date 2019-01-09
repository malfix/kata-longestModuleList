class Exercise
  def find(*list)
    return list if list.include?(1)
    divisor_map = {}
    list.each do |el|
      find_div(el).each do |div|
        divisor_map[div] = (divisor_map[div] || []) << el
      end
    end
    divisor_map.sort_by{|k,v| -v.size}[0][1]
  end

  def find_div(el)
    divisors = []
    2.upto(el) do |idx|
      divisors << idx if el % idx == 0
    end
    divisors
  end
end
