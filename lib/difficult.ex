defmodule Difficult do
  @moduledoc"""
  Difficult, but computable functions.
  """

  @doc"""
  as same in essence as https://en.wikipedia.org/wiki/Ackermann_function

  ## Examples

      iex> Difficult.ackerman_operation(<< 1, 2 >>)
      :ok
      iex> Difficult.ackerman_operation(<< 1, 2 >>, [:print])
      <<1, 2>>
      <<0, 2, 1>>
      <<1, 1, 1>>
      <<0, 1, 0, 1>>
      <<1, 0, 0, 1>>
      <<2, 0, 1>>
      <<3, 1>>
      <<2, 1, 0>>
      <<1, 1, 0, 0>>
      <<0, 1, 0, 0, 0>>
      <<1, 0, 0, 0, 0>>
      <<2, 0, 0, 0>>
      <<3, 0, 0>>
      <<4, 0>>
      <<5>>
      :ok

  """
  @spec ackerman_operation(binary, [atom]) :: binary
  def ackerman_operation(input, options \\ []) do
    if Enum.member?(options, :print), do: IO.inspect input
    _ackerman_operation input, options
  end
  defp _ackerman_operation(<< _ >>, _), do: :ok
  defp _ackerman_operation(<< n, 0 >> <> rest, options), do: ackerman_operation(<< n + 1 >> <> rest, options)
  defp _ackerman_operation(<< 0, m >> <> rest, options), do: ackerman_operation(<< 1, m - 1>> <> rest, options)
  defp _ackerman_operation(<< n, m >> <> rest, options), do: ackerman_operation(<< n - 1, m, m - 1>> <> rest, options)

end
