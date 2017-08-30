defmodule HackerRankTest.Recursion do
  use ExUnit.Case
  import HackerRank.Recursion
  doctest HackerRank.Recursion

  test "it computes the GCD" do
    input = [10, 100]
    expected = 10
    actual = gcd(input)
    assert actual == expected
    input = [2, 3]
    expected = 1
    actual = gcd(input)
    assert actual == expected
  end

  test "it computes the Nth Fibonaci number" do
    input = 3
    expected = 1
    actual = fibonaci(input)
    assert actual == expected
    input = 4
    expected = 2
    actual = fibonaci(input)
    assert actual == expected
    input = 5
    expected = 3
    actual = fibonaci(input)
    assert actual == expected
  end

  test "it returns Pascal's triangle as nested arrays" do
    input = 5
    expected = [[1], [1, 1], [1, 2, 1], [1, 3, 3, 1], [1, 4, 6, 4, 1]]
    actual = pascal(input)
    assert actual == expected
  end

end