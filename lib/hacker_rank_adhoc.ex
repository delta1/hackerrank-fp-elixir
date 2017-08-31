defmodule HackerRank.Adhoc do
    import HackerRank.Recursion
    defp lcm(x, y) when x == y, do: x
    defp lcm(x, y) do
        x * y / gcd(x, y)
    end
    def lcm(enum) when length(enum) == 2 do
        [x, y] = enum
        lcm(x, y)
    end
    def lcm(enum) when length(enum) >= 3 do
        [x | tail] = enum
        [y | tail] = tail
        lcm([lcm(x,y) | tail])
    end

    def left_rotate(str, n) do
        <<front::binary-size(n), back::binary>> = str
        back <> front
    end

    def string_rotations(str) do
        n = String.length(str)
        Enum.map(1..n, fn x -> left_rotate(str, x) end)
    end
end