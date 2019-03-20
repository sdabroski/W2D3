
class Array

  def my_uniq
    uniq_arr = []
    self.each { |el| uniq_arr << el unless uniq_arr.include?(el) }
    uniq_arr
  end

  def two_sum
    zero_sum = []
    (0...length - 1).each do |i|
      (i + 1...length).each do |j|
        zero_sum << [i, j] if self[i] + self[j] == 0
      end
    end
    zero_sum
  end
end

def my_transpose(arr)
  transposed = []
  arr.length.times do |i|
    new_row = []
    arr.first.length.times do |j|
      new_row << arr[j][i]
    end
    transposed << new_row
  end
  transposed
end

