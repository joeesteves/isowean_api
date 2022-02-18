defmodule Agriness do
  use GenServer

  def start_link(_state) do
    GenServer.start_link(__MODULE__, nil, name: __MODULE__)
  end

  @impl true
  def init(_initial_state) do
    {:ok, conn} = Firebirdex.start_link(opts())

    {:ok, conn}
  end

  @impl true
  def handle_call(:conn, _from, conn) do
    {:reply, conn, conn}
  end

  def opts do
    [
      hostname: "186.64.84.204",
      port: 3057,
      username: "isowean",
      password: "isowean22",
      database: "c:\\AGRINESS S2 MULT\\bdsanmult.fdb",
      createdb: false,
      show_sensitive_data_on_connection_error: true
    ]
  end

  def conn do
    GenServer.call(__MODULE__, :conn)
  end

  def query(sql) do
    Firebirdex.query!(conn(), sql)
    |> parse_result()
  end

  defp parse_result(results) do
     %{columns: cols, rows: rows} = results

    Enum.map(rows, fn row -> Enum.zip(cols, row)|> Enum.into(%{}) end)
  end

  def mating_query(args) do
    """
    SELECT cob.CDCOBERTURA, #{cast_date_field("cob.DTCOBERTURA")}, an.CDMATRIZ, an.ID1, cob.CICLO, rep.ID1, fun.NMFUNCIONARIO  FROM ESANCOBERTURA cob
    LEFT JOIN ESANFUNCIONARIO fun ON cob.CDFUNCIONARIO  = fun.CDFUNCIONARIO
    LEFT JOIN ESANMATRIZ an ON cob.CDMATRIZ = an.CDMATRIZ
    LEFT JOIN ESANREPRODUTOR rep ON cob.CDREPRODUTOR = rep.CDREPRODUTOR
    WHERE cob.DTCOBERTURA >= date '#{args[:date_since]}'
    AND   cob.DTCOBERTURA <= date '#{args[:date_to]}'
    """
  end

  def cast_date_field(field_name) do
    "SUBSTRING(CAST(#{field_name} as varchar(50)) FROM 1 FOR 10) #{String.replace(field_name, ~r/^.*\./, "")}"
  end
end
