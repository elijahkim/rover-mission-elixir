defmodule CLITest do
  use ExUnit.Case

  alias Rover.CLI, as: Subject

  test ":help returned by option parsing with -h or --help options" do
    assert Subject.parse_args([ "-h", "anything" ]) == :help
    assert Subject.parse_args([ "--help", "anything" ]) == :help
  end

  test "{:ok, file} returned if an existing file is given" do
    file_path = "test/support/input.txt"
    {:ok, match} = Subject.parse_args([file_path])
    assert match
  end
end
