require_relative "exercise"
require "test/unit"

class TestExercise < Test::Unit::TestCase
  test 'case 1' do
    assert_equal [5, 10, 20], Exercise.new.find(3, 5, 10, 20, 21)
  end

  test 'case 2' do
    assert_equal [1, 3, 6, 24], Exercise.new.find(1, 3, 6, 24)
  end

  test 'find div' do
    assert_equal [2, 3, 4, 6, 8, 12, 24], Exercise.new.find_div(24)
  end
end
