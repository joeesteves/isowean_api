defmodule IsoweanApiWeb.Resolvers.Content do
  def credentials do
    Application.get_env(:teamplace, :credentials)
  end

  def matings(_parent, args, _context) do
    data = Agriness.mating_query(args)
    |> Agriness.query()
    |> Enum.map(&to_atom_map/1)

    {:ok, data}
  end

  def client_applications(_parent, args, _context) do
    data =
      Teamplace.get_data(credentials(), "reports", "biaplicaciondeclientes", %{
        FechaDesde: args[:date_since],
        FechaHasta: args[:date_to],
        Empresa: "EMPRE01"
      })
      |> Enum.map(&to_atom_map/1)

    {:ok, data}
  end

  def sales_analysis(_parent, args, _context) do
    data =
      Teamplace.get_data(credentials(), "reports", "bianalisisdeliquidacionesdeventa", %{
        FechaDesde: args[:date_since],
        FechaHasta: args[:date_to],
        Empresa: "EMPRE01"
      })
      |> Enum.map(&to_atom_map/1)

    {:ok, data}
  end

  def cvh_analysis(_parent, args, _context) do
    data =
      Teamplace.get_data(credentials(), "reports", "bianalisisdecvh", %{
        FechaDesde: args[:date_since],
        FechaHasta: args[:date_to],
        Empresa: "EMPRE01"
      })
      |> Enum.map(&to_atom_map/1)

    {:ok, data}
  end

  def livestock_dispatch(_parent, args, _context) do
    data =
      Teamplace.get_data(credentials(), "reports", "bivinculaciondeoperaciones", %{
        FechaDesde: args[:date_since],
        FechaHasta: args[:date_to],
        Documento: "HAC-DESP",
        RolVinculacion: 40,
        Empresa: "EMPRE01"
      })
      |> Enum.map(&to_atom_map/1)

    {:ok, data}
  end

  def cvh(_parent, args, _context) do
    data =
      Teamplace.get_data(credentials(), "reports", "bivinculaciondeoperaciones", %{
        FechaDesde: args[:date_since],
        FechaHasta: args[:date_to],
        Documento: "CVH",
        RolVinculacion: 40,
        Empresa: "EMPRE01"
      })
      |> Enum.map(&to_atom_map/1)

    {:ok, data}
  end

  def settlements_and_adjustments(_parent, args, _context) do
    data_nc =
      Teamplace.get_data(credentials(), "reports", "bivinculaciondeoperaciones", %{
        FechaDesde: args[:date_since],
        FechaHasta: args[:date_to],
        Documento: "LIQ-HAC-NC",
        Empresa: "EMPRE01"
      })
      |> Enum.map(&to_atom_map/1)

    data_nd =
      Teamplace.get_data(credentials(), "reports", "bivinculaciondeoperaciones", %{
        FechaDesde: args[:date_since],
        FechaHasta: args[:date_to],
        Documento: "LIQ-HAC-ND",
        Empresa: "EMPRE01"
      })
      |> Enum.map(&to_atom_map/1)

    {:ok, data_nc ++ data_nd}
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
        fechaDesde: args[:date_since],
        fechaHasta: args[:date_to],
        TipoPrecio: 1,
        Moneda: "PES",
        Empresa: "EMPRE01"
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

  def list_receptions(_parent, args, _context) do
    res = case args do
      %{date_since: date_since, date_to: date_to} ->
        HTTPoison.get!("https://recepcion.isowean.com/events?from=#{date_since}&to=#{date_to}")
      _ ->

        HTTPoison.get!("https://recepcion.isowean.com/events")
    end

    data =
      res.body
      |> Jason.decode!()
      |> Enum.map(&to_atom_map/1)

    {:ok, data}
  end

  def list_scores(_parent, _args, _context) do
    res = HTTPoison.get!("https://caliper.isowean.com/api/scores")

    data =
      res.body
      |> Jason.decode!()
      |> Enum.map(&to_atom_map/1)

    {:ok, data}
  end

  def to_atom_map(map) do
    for {k, v} <- map, into: %{} do
      key =
        k
        |> Macro.underscore()
        |> String.replace(~r/(-|\s)/, "")
        |> String.replace("/", "_")
        |> String.replace("%_", "")
        |> String.replace(~r/_(\w)_/, "\\1", global: true)
        |> String.to_atom()

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
