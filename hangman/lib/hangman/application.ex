defmodule Hangman.Application do
  use Application

  def start(_type, _args) do

    children = [
      { Hangman.WorkerSupervisor, [] },
    ]

    options = [
      strategy: :one_for_one,
    ]

    Supervisor.start_link(children, options)
  end
end
