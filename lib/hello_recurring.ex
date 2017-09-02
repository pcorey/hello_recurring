defmodule HelloRecurring do
  use Application

  import Supervisor.Spec

  def start(_type, _args) do
    Supervisor.start_link([worker(HelloRecurring.FruitPrinter, [])],
                          [strategy: :one_for_one, name: HelloRecurring.Supervisor])
  end

end
