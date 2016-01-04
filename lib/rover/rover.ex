defmodule Rover.Rover do
  def process(directions, boundries) do
    [starting_point | movement] = Enum.split(directions, "\n")

    starting_x = Enum.at(starting_point, 0)
    starting_y = Enum.at(starting_point, 1)
    starting_z = Enum.at(starting_point, 2)
  end

  def rotate(rotation_direction, current_direction) do
    _rotate(rotation_direction, current_direction)
  end

  def _rotate("L", "N"), do: "W"
  def _rotate("L", "E"), do: "N"
  def _rotate("L", "S"), do: "E"
  def _rotate("L", "W"), do: "S"

  def _rotate("R", "N"), do: "E"
  def _rotate("R", "E"), do: "S"
  def _rotate("R", "S"), do: "W"
  def _rotate("R", "W"), do: "N"
end
