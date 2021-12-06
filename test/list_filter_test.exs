defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "count odd numbers in a list with string values" do
      list = ["1", "2", "3", "4", "5"]

      response = ListFilter.call(list)

      expected_response = 3

      assert response == expected_response
    end

    test "return zero counts odd numbers in a list with string values" do
      list = ["banana", "2", "pera", "4", "maca"]

      response = ListFilter.call(list)

      expected_response = 0

      assert response == expected_response
    end

    test "return zero counts odd numbers in a list containing only words" do
      list = ["banana", "pera", "maca"]

      response = ListFilter.call(list)

      expected_response = 0

      assert response == expected_response
    end

    test "return zero counts odd numbers in a empty list" do
      list = []

      response = ListFilter.call(list)

      expected_response = 0

      assert response == expected_response
    end
  end
end
