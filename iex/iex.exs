IEx.configure(colors: [eval_result: [:red, :bright]])
IEx.configure(inspect: [limit: 10])
IEx.configure(history_size: 100)

defmodule Helpers do
  def copy(term) do
    text =
      if is_binary(term) do
        term
      else
        inspect(term, limit: :infinity, pretty: true)
      end

    port = Port.open({:spawn, "pbcopy"}, [])
    true = Port.command(port, text)
    true = Port.close(port)

    :ok
  end
end
