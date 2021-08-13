defmodule IsoweanApiWeb.Resolvers.Content do
  @credentials Application.get_env(:teamplace, :credentials)
  def list_maquinas(_parent, _args, _context) do
    data =
      Teamplace.get_data(@credentials, "maquinas", "list")
      |> Enum.take(10)
      |> Enum.map(&to_atom_map/1)

    {:ok, data}
  end

  def list_proveedor(_parent, _args, _context) do
    data =
      Teamplace.get_data(@credentials, "proveedor", "list")
      |> Enum.take(10)
      |> Enum.map(&to_atom_map/1)

    {:ok, data}
  end

  def list_cheques(_parent, _args, _context) do
    data =
      Teamplace.get_data(@credentials, "reports", "checks", %{
        TipoCheque: 0,
        Estado: "emitido",
        MostrarSoloNoConciliados: 0,
        Empresa: "EMPRE01",
        CuentaContable: "BCOGALDIF"
      })
      |> Enum.map(&to_atom_map/1)

    {:ok, data}
  end

  def to_atom_map(map) do
    for {k, v} <- map, into: %{} do
      key = k |> Macro.underscore() |> String.to_atom()

      value =
        case v do
          v when is_list(v) ->
            if List.first(v) |> is_bitstring() do
              v
            else
              Enum.map(v, &to_atom_map/1)
            end

          v when is_map(v) ->
            to_atom_map(v)

          _ ->
            v
        end

      {key, value}
    end
  end
end
