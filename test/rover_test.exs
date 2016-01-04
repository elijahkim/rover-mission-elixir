defmodule RoverTest do
  use ExUnit.Case

  alias Rover.Rover, as: Sujbect

  test "Rover.Rover#process returns the proper coordinates" do
    assert Subject.process(["1 2 N"], ["LMLMLMLMM"], ["5"], ["5"])
  end
end
