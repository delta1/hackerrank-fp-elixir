defmodule HackerRank.Introduction do
  @moduledoc """
  Documentation for HackerRank.
  """

  @doc """
  Input Numbers takes a stream of lines containing numbers and returns an array of those numbers

  ## Examples

      iex> import HackerRank.Introduction
      iex> f = File.stream!("./test/input_numbers_test.txt")
      iex> input_numbers(f)
      [10, 20, 30, 40, 50]

  """
  def input_numbers(stream) do
    stream
    |> Enum.map(&String.trim/1)
    |> Enum.map(&String.to_integer/1)
  end

  def output_lines(enum) do
    enum
    |> Enum.map(&IO.puts/1)
  end

  def solve_me_first(enum) do
    [a, b] = enum
    a + b
  end

  def hello_world do
    ["Hello World"]
  end

  def hello_world_n(enum) do
    [n] = enum
    Enum.map(1..n, fn _ -> "Hello World" end)
  end

  def list_replication(enum) do
    [repeat|values] = enum
    values |> Enum.flat_map(&Enum.map(1..repeat, fn _ -> &1 end))
  end

  def filter(enum, fun) do
    Enum.reduce(enum, [], fn(x, acc) -> if fun.(x) do acc ++ [x] else acc end end)
  end

  def filter_array(enum) do
    [max|values] = enum
    values |> filter(fn x -> x < max end)
  end

  def filter_positions_in_list(enum) do
    enum |> Enum.drop_every(2)
  end

  def array_of_n_elements(enum) do
    #need to use IO.inspect(list, limit: :infinity) for output
    [n] = enum
    Enum.take(1..n, n)
  end

  def reverse_a_list(enum) do
    #Enum.reverse(enum)
    Enum.reduce(enum, [], fn(x, acc) -> [x|acc] end)
  end

  def sum_of_odd_integers(enum) do
    require Integer
    enum
      |> Enum.filter(fn x -> Integer.is_odd(x) end)
      |> Enum.sum
  end

  def list_length(enum) do
    #length(enum)
    Enum.reduce(enum, 0, fn(_, acc) -> acc + 1 end)
  end

  def update_list(enum) do
    Enum.map(enum, &abs/1)
  end

  def factorial(0), do: 1
  def factorial(n) when n > 0 do
    Enum.reduce(1..n, 1, fn (x, acc) -> acc * x end)
  end

  def evaluate_e_x(x) do
    Enum.reduce(0..9, 0, fn (i, acc) -> acc + :math.pow(x, i) / factorial(i) end)
      |> Float.round(4)
  end

  def area_under_curve(a, b, l, r) do
    zipped = Enum.zip(a, b)
    y = fn x ->
      zipped
      |> Enum.map(fn {co, exp} -> co * :math.pow(x, exp) end)
      |> Enum.sum
    end
    dx = 0.001
    n = trunc((r - l) / dx) + 1
    0..n-1
      |> Enum.map(fn x -> y.(l + x * dx) * dx end)
      |> Enum.sum
      |> Float.round(1)
  end

  def volume_of_revolution(a, b, l, r) do
    zipped = Enum.zip(a, b)
    y = fn x ->
      zipped
      |> Enum.map(fn {co, exp} -> co * :math.pow(x, exp) end)
      |> Enum.sum
    end
    dx = 0.001
    n = trunc((r - l) / dx) + 1
    pi = :math.pi
    0..n-1
      |> Enum.map(fn x -> pi * :math.pow(y.(l + x * dx), 2) * dx end)
      |> Enum.sum
      |> Float.round(1)
  end

  def valid_function(enum) do
    map = Enum.reduce(enum, %{ valid: true }, fn ([x, y], acc) ->
      if Map.has_key?(acc, x) do
        if Map.get(acc, x) != y do
          Map.put(acc, :valid, false)
        end
      else
        Map.put(acc, x, y)
      end
    end)
    map.valid
  end

  def distance(p1, p2) do
    [x1, y1] = p1
    [x2, y2] = p2
    :math.sqrt(:math.pow(x2 - x1, 2) + :math.pow(y2 - y1, 2))
  end

  def polygon_perimeter(enum) do
    [first|_] = enum
    #last = Enum.at(enum, length(enum) - 1)
    [last|_] = Enum.reverse(enum)
    Enum.reduce(enum, %{current: first, perimeter: distance(last, first)}, fn point, acc ->
      perimeter = acc.perimeter + distance(acc.current, point)
      %{current: point, perimeter: perimeter}
    end).perimeter
  end

end
