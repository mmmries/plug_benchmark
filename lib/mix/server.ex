defmodule Mix.Tasks.Server do
  use Mix.Task

  def run(_args) do
    Plug.Adapters.Cowboy.http Golf, []
  end
end
