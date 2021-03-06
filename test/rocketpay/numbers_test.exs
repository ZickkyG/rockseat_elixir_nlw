defmodule Rocketpay.NumbersTest do
 use ExUnit.Case, async: true

 alias Rocketpay.Numbers

 describe "sum_from_file/1" do
   test "when there is a file with the given name, return the sum of the numbers in the file" do
      response = Numbers.sum_from_file("numbers")

      expect_response = {:ok, %{result: 37}}

      assert response == expect_response
   end

   test "when there is no file with the given name, returns an error" do
      response = Numbers.sum_from_file("banana")

      expect_response = {:error, %{message: "Invalid file name!"}}

      assert response == expect_response
   end
 end
end
