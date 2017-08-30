defmodule HackerRank.Recursion do
    defp gcd(x,y) when x == y, do: x
    defp gcd(x,y) when x > y, do: gcd(x - y, y)
    defp gcd(x,y) when x < y, do: gcd(x, y - x)
    def gcd(enum) do
        [x, y] = enum
        gcd(x, y)
    end

    def fibonaci(n) when n == 1, do: 0
    def fibonaci(n) when n == 2, do: 1
    def fibonaci(n) when n >= 3, do: fibonaci(n - 1) + fibonaci(n - 2)

    defp pascal(row, col) when (col == 0) or (row == col), do: 1
    defp pascal(row, col), do: pascal(row - 1, col - 1) + pascal(row - 1, col)
    def pascal(rows) do
        Enum.map(0..rows-1, fn r -> Enum.map(0..r, fn c -> pascal(r, c) end) end)
    end
end