defmodule RoverTest do
  use ExUnit.Case

  alias Rover.Rover, as: Subject

  test "Rover.Rover#process returns the proper coordinates" do
    assert Subject.process(directions, boundries) == "1 3 N"
  end

  test "#rotate returns the direction after rotation" do
    assert Subject.rotate("L", "N") == "W"
    assert Subject.rotate("L", "E") == "N"
    assert Subject.rotate("L", "S") == "E"
    assert Subject.rotate("L", "W") == "S"

    assert Subject.rotate("R", "N") == "E"
    assert Subject.rotate("R", "E") == "S"
    assert Subject.rotate("R", "S") == "W"
    assert Subject.rotate("R", "W") == "N"
  end

  def directions, do: ["1 2 N\nLMLMLMLMM"]
  def boundries, do: ["5 5"]
end
