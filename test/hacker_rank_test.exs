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

end
