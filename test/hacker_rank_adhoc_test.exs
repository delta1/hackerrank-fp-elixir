defmodule HackerRankTest.Adhoc do
  use ExUnit.Case
  import HackerRank.Adhoc
  doctest HackerRank.Adhoc

  test "it calculates the least common multiple for Jumping Bunnies" do
    input = [2, 4]
    expected = 4
    actual = lcm(input)
    assert actual == expected
    input = [2, 3, 4]
    expected = 12
    actual = lcm(input)
    assert actual == expected
  end

  test "it left rotates a string by a given number of chars" do
    input ="abcde"
    expected = "bcdea"
    n = 1
    actual = left_rotate(input, n)
    assert actual == expected
    input ="abcde"
    expected = "eabcd"
    n = 4
    actual = left_rotate(input, n)
    assert actual == expected
  end

  test "it returns an array of rotated strings" do
    input = "abcde"
    expected = ["bcdea", "cdeab", "deabc", "eabcd", "abcde"]
    actual = string_rotations(input)
    assert actual == expected
  end

end
