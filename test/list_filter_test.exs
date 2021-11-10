defmodule ListFilterTest do
  use ExUnit.Case

  describe "filter/1" do
    test "shall return 0 to list empty" do
      assert ListFilter.filter([]) == 0
    end

    test "shall return count of odd numbers" do
      assert ListFilter.filter(["banana", "abc"]) == 0
      assert ListFilter.filter(["1"]) == 1
      assert ListFilter.filter(["1", "3"]) == 2
      assert ListFilter.filter(["1", "3", "6", "43", "banana", "6", "abc", "3"]) == 4
    end
  end
end
