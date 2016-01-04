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

  test "#forward returns the placement after moving forward" do
    assert Subject.forward("1 2", "N") == "1 3"
    assert Subject.forward("1 2", "E") == "2 2"
    assert Subject.forward("1 2", "S") == "1 1"
    assert Subject.forward("1 2", "W") == "0 2"
  end

  def directions, do: ["1 2 N\nLMLMLMLMM"]
  def boundries, do: ["5 5"]
end
