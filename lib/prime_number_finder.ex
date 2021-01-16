defmodule PrimeNumberFinder do

  def is_prime?(n) do
    cond do
      is_last_dight_1_3_or_9?(n) == 1 && sq_root(n) == 1  && divide_by_3_7_9(n) == 1 -> "n is a prime number"
      is_last_dight_1_3_or_9?(n) == 0 || sq_root(n) == 0 || divide_by_3_7_9(n) == 0 -> "n is not a prime number"
    end
  end

  def is_last_dight_1_3_or_9?(n) do
    last_dight = "#{n}" |> String.codepoints() |> List.last() |> String.to_integer()
    IO.inspect(last_dight, label: "last dight")
    cond do
      last_dight == 1 || last_dight == 3 || last_dight == 9 || last_dight == 7 -> 1
      true -> 0
    end
  end

  def sq_root(n) do
    sq = :math.sqrt(n) |> Float.to_string() |> String.codepoints() |> List.last() |> String.to_integer()
    IO.inspect(sq, label: "sq")
    cond do
      sq != 0 -> 1
      sq == 0 -> 0
    end
  end

  def divide_by_3_7_9(n) do
    a = [n / 3, n / 7, n / 9]
    IO.inspect(a, label: "a")
    cond do
      Enum.all?(a, fn x -> Float.to_string(x) |> String.codepoints |> List.last() != "0" end) == true -> 1
      Enum.all?(a, fn x -> Float.to_string(x) |> String.codepoints |> List.last() == "0" end) == false -> 0
  end
end
end
