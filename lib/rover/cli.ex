defmodule Rover.CLI do
  def main(argv) do
    argv
    |> parse_args
    |> process
  end

  def parse_args(argv) do
    parse = OptionParser.parse(argv, switches: [help: :boolean],
                                     aliases:  [h: :help])
    case parse do
      { [help: true], _, _ } -> :help
      { _, [file_path], _ } -> File.read file_path
    end
  end

  def process(:help) do
    IO.puts """
    usage: rover <file_path>
    """
    System.halt(0)
  end

  def process({:error, _}) do
    IO.puts "Bad file path"
    System.halt(0)
  end

  def process({:ok, file}) do
    [boundries | rovers] = String.split(file, "\n")
    boundries = String.split(boundries)

    for rover <- Enum.chunk(rovers, 2) do
      rover
      |> String.split(rover)
      |> Rover.Rover.process(boundires)
    end
  end
end
