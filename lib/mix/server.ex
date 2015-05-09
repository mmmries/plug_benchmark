defmodule Mix.Tasks.Server do
  use Mix.Task

  def run(_args) do
    Plug.Adapters.Cowboy.http Golf, []
    wait
  end

  defp wait do
    :timer.sleep(100_000)
    wait
  end
end
