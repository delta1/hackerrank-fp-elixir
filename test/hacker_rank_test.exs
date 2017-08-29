defmodule HackerRankTest do
  use ExUnit.Case
  import HackerRank
  doctest HackerRank

  test "it inputs numbers" do
    stream = File.stream!("./test/input_numbers_test.txt")
    assert input_numbers(stream) == [10, 20, 30, 40, 50]
  end

  test "it solves me first" do
    assert solve_me_first([2, 3]) == 5
  end

  test "it returns hello world" do
    assert hello_world() == ["Hello World"]
  end

  test "it returns hello world n times" do
    assert hello_world_n([4]) == ["Hello World", "Hello World", "Hello World", "Hello World"]
  end

  test "it replicates lists" do
    input = [3, 1, 2, 3, 4]
    expected = [1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4]
    actual = list_replication(input)
    assert actual == expected
  end

  test "its custom filter matches Enum.filter" do
    input = [3, 10, 9, 8, 2, 7, 5, 1, 3, 0]
    max = fn x -> x < 3 end
    expected = Enum.filter(input, max)
    actual = filter(input, max)
    assert actual == expected
  end

  test "it filters arrays" do
    input = [3, 10, 9, 8, 2, 7, 5, 1, 3, 0]
    expected = [2, 1, 0]
    actual = filter_array(input)
    assert actual == expected
  end

  test "it filters positions in a list" do
    input = [2, 5, 3, 4, 6, 7, 9, 8]
    expected = [5, 4, 7, 8]
    actual = filter_positions_in_list(input)
    assert actual == expected
  end

  test "it creates an array of N integers" do
    input = [4]
    expected_length = 4
    actual = array_of_n_elements(input)
    assert length(actual) == expected_length
  end

  test "it reverses a list" do
    input = [1, 2, 3, 4]
    expected = [4, 3, 2, 1]
    actual = reverse_a_list(input)
    assert actual == expected
  end

  test "it sums the odd integers" do
    input = [3, 2, 4, 6, 5, 7, 8, 0, 1]
    expected = 16
    actual = sum_of_odd_integers(input)
    assert actual == expected
  end

  test "it counts the length of the list" do
    input = [2, 5, 1, 4, 3, 7, 8, 6, 0, 9]
    expected_length = 10
    actual = list_length(input)
    assert actual == expected_length
  end

  test "it updates the list with its absolute values" do
    input = [2, -4, 3, -1, 23, -4, -54]
    expected = [2, 4, 3, 1, 23, 4, 54]
    actual = update_list(input)
    assert actual == expected
  end

  test "it computes factorial up to 10" do
    #factorial
    input = 10
    expected = 3628800
    actual = factorial(input)
    assert actual == expected
  end

  test "it evalutes e^x from 10 terms of series expansion" do
    #e^x
    input = 5.0000
    expected = 143.6895
    actual = evaluate_e_x(input)
    assert actual == expected
  end

  test "it calculates the area under the curve" do
    a = [1, 2, 3, 4, 5]
    b = [6, 7, 8, 9, 10]
    l = 1
    r = 4
    expected = 2435300.3
    actual = area_under_curve(a, b, l, r)
    assert actual == expected
  end

  test "it calculates the volume of the revolution about x-axis" do
    a = [1, 2, 3, 4, 5]
    b = [6, 7, 8, 9, 10]
    l = 1
    r = 4
    expected = 26172951168940.8
    actual = volume_of_revolution(a, b, l, r)
    assert actual == expected
  end

end
