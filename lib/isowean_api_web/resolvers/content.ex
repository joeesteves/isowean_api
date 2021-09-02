defmodule IsoweanApiWeb.Resolvers.Content do
  def credentials do
    Application.get_env(:teamplace, :credentials)
  end

  def invoice_report(_parent, args, _context) do
    data =
      Teamplace.get_data(credentials(), "reports", "bianalisisdefacturacion", %{
        FechaDesde: args[:date_since],
        FechaHasta: args[:date_to],
        cuenta: args[:account],
        Empresa: "EMPRE01"
      })
      |> Enum.map(&to_atom_map/1)

    {:ok, data}
  end

  def balance_report(_parent, args, _context) do
    data =
      Teamplace.get_data(credentials(), "reports", "bibalancepormes", %{
        FechaDesde: args[:date_since],
        FechaHasta: args[:date_to],
        cuenta: args[:account],
        Empresa: "EMPRE01"
      })
      |> Enum.map(&to_atom_map/1)

    {:ok, data}
  end

  def production_supply_report(_parent, args, _context) do
    data =
      Teamplace.get_data(credentials(), "reports", "bianalisisdeconsumosdeproduccion", %{
        FechaDesde: args[:date_since],
        FechaHasta: args[:date_to],
        Empresa: "EMPRE01"
      })
      |> Enum.map(&to_atom_map/1)

    {:ok, data}
  end
  def ledger_report(_parent, args, _context) do
    data =
      Teamplace.get_data(credentials(), "reports", "bimayor", %{
        FechaDesde: args[:date_since],
        FechaHasta: args[:date_to],
        cuenta: args[:account],
        soloconsaldo: true,
        Empresa: "EMPRE01"
      })
      |> Enum.map(&to_atom_map/1)

    {:ok, data}
  end

  def ledger_report(_parent, args, _context) do
    data =
      Teamplace.get_data(credentials(), "reports", "bimayor", %{
        FechaDesde: args[:date_since],
        FechaHasta: args[:date_to],
        cuenta: args[:account],
        soloconsaldo: true,
        Empresa: "EMPRE01"
      })
      |> Enum.map(&to_atom_map/1)

    {:ok, data}
  end

  def ledger_report(_parent, args, _context) do
    data =
      Teamplace.get_data(credentials(), "reports", "bimayor", %{
        FechaDesde: args[:date_since],
        FechaHasta: args[:date_to],
        cuenta: args[:account],
        soloconsaldo: true,
        Empresa: "EMPRE01"
      })
      |> Enum.map(&to_atom_map/1)

    {:ok, data}
  end

  def dispatch_report(_parent, args, _context) do
    data =
      Teamplace.get_data(credentials(), "reports", "bianalisisdedespachos", %{
        FechaDesde: args[:date_since],
        FechaHasta: args[:date_to]
      })
      |> Enum.map(&to_atom_map/1)

    {:ok, data}
  end

  def supplementation_report(_parent, args, _context) do
    data =
      Teamplace.get_data(credentials(), "reports", "bianalisisdesuplementacion", %{
        FechaDesde: args[:date_since],
        FechaHasta: args[:date_to],
        TipoPrecio: 1,
        Moneda: "PES"
      })
      |> Enum.map(&to_atom_map/1)

    {:ok, data}
  end

  def stock_summary(_parent, args, _context) do
    data =
      Teamplace.get_data(credentials(), "reports", "RESUMENSTOCK", %{
        producto: args[:product],
        soloStockNoCero: args[:stock_only] || false
      })
      |> Enum.map(&to_atom_map/1)

    {:ok, data}
  end

  def list_maquinas(_parent, _args, _context) do
    data =
      Teamplace.get_data(credentials(), "maquinas", "list")
      |> Enum.map(&to_atom_map/1)

    {:ok, data}
  end

  def list_proveedor(_parent, _args, _context) do
    data =
      Teamplace.get_data(credentials(), "proveedor", "list")
      |> Enum.map(&to_atom_map/1)

    {:ok, data}
  end

  def list_cheques(_parent, _args, _context) do
    data =
      Teamplace.get_data(credentials(), "reports", "checks", %{
        TipoCheque: 0,
        Estado: "emitido",
        MostrarSoloNoConciliados: 0,
        Empresa: "EMPRE01",
        CuentaContable: "BCOGALDIF"
      })
      |> Enum.map(&to_atom_map/1)

    {:ok, data}
  end

  def list_scores(_parent, _args, _context) do
    res = HTTPoison.get!("https://caliper.isowean.com.ar/api/scores")

    data =
      res.body
      |> Jason.decode!()
      |> Enum.map(&to_atom_map/1)

    {:ok, data}
  end

  def to_atom_map(map) do
    for {k, v} <- map, into: %{} do
      key = k |> Macro.underscore() |> String.replace("-", "") |> String.to_atom()

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
