defmodule Pokerwars.Helpers.HandTest do
  use ExUnit.Case, async: true
  alias Pokerwars.Helpers.Hand, as: Helper
  doctest Pokerwars.Helpers.Hand

  describe "same_suit?/1" do
    test "returns true when all suits are the same" do
      suits = [
        :hearts,
        :hearts,
        :hearts,
        :hearts,
        :hearts,
        :hearts
      ]

      assert Helper.same_suit?(suits)
    end

    test "returns false when suits are different" do
      suits = [
        :hearts,
        :hearts,
        :hearts,
        :spades,
        :hearts,
        :diamonds
      ]

      refute Helper.same_suit?(suits)
    end
  end

  describe "consecutive_ranks?/1" do
    test "returns true when ranks are consecutive" do
      ranks = [1, 2, 3, 4, 5]
      assert Helper.consecutive_ranks?(ranks)
    end

    test "returns false when ranks are not consecutive" do
      ranks = [1, 6, 3, 2, 5]
      refute Helper.consecutive_ranks?(ranks)
    end
  end

  describe "x_of_a_kind?/2" do
    test "returns true when given x of a kind" do
      ranks = [2, 2, 4, 2, 2]
      assert Helper.x_of_a_kind?(ranks, 4)
    end

    test "returns false when doesn't have x of a kind" do
       ranks = [2, 2, 4, 2, 2]
      refute Helper.x_of_a_kind?(ranks, 3)
    end
  end
end

