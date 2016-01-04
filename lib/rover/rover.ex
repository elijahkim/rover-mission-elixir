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

  defp _rotate("L", "N"), do: "W"
  defp _rotate("L", "E"), do: "N"
  defp _rotate("L", "S"), do: "E"
  defp _rotate("L", "W"), do: "S"

  defp _rotate("R", "N"), do: "E"
  defp _rotate("R", "E"), do: "S"
  defp _rotate("R", "S"), do: "W"
  defp _rotate("R", "W"), do: "N"

  def forward(current_location, facing_direction) do
    x = String.at(current_location, 0) |> String.to_integer
    y = String.at(current_location, 2) |> String.to_integer
    _forward(x, y, facing_direction)
  end

  defp _forward(x, y, "N"), do: "#{x} #{y+1}"
  defp _forward(x, y, "E"), do: "#{x+1} #{y}"
  defp _forward(x, y, "S"), do: "#{x} #{y-1}"
  defp _forward(x, y, "W"), do: "#{x-1} #{y}"
end
