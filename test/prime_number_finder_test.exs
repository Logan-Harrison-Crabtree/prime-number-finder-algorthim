defmodule PrimeNumberFinderTest do
  use ExUnit.Case
  doctest PrimeNumberFinder

  test "is_prime returns wheaterh an integer is prime or not" do
    assert PrimeNumberFinder.is_prime?(11) == "n is a prime number"
  end

  test "the last digiit of a number is obtqaned and wheather its 1, 3, or 9 is reviled" do
    assert PrimeNumberFinder.is_last_dight_1_3_or_9?(19) == 1
  end

  test "the square root of the number is found and if its a float then 1 is returned" do
    assert PrimeNumberFinder.sq_root(11) == 1
    assert PrimeNumberFinder.sq_root(9) == 0
  end

  test "n is divided by 3 7 and 9" do
    assert PrimeNumberFinder.divide_by_3_7_9(11) == 1
  end




end
