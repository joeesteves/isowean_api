defmodule IsoweanApiWeb.Schema.ContentTypes do
  use Absinthe.Schema.Notation

  object :dispatch_report do
    field :cantidad, :string
    field :proveedor, :string
    field :transacciontiponombre, :string
    field :unidadventa, :string
    field :unidadstock2, :string
    field :fecha, :string
    field :vendedor, :string
    field :descripcion, :string
    field :codigoprod, :string
    field :cliente, :string
    field :cantidadstock2, :string
    field :moneda, :string
    field :totalbruto, :string
    field :importemonprincipal, :string
    field :depositoorigen, :string
    field :importe, :string
    field :preciomonprincipal, :string
    field :condicionpago, :string
    field :organizacion, :string
    field :unidadstock, :string
    field :total, :string
    field :producto, :string
    field :depositodestino, :string
    field :importemonsecundaria, :string
    field :precio, :string
    field :estado, :string
    field :cuenta, :string
    field :rubro, :string
    field :totalconceptos, :string
    field :comprobante, :string
    field :preciomonsecundaria, :string
    field :docnroint, :string
  end

  object :supplementation_report do
    field :precio, :float
    field :producto, :string
    field :insumo, :string
    field :establecimiento, :string
    field :depositoid, :integer
    field :importe, :float
    field :documento, :string
    field :lote, :string
    field :moneda, :string
    field :kilos, :float
    field :evento, :string
    field :cabezas, :integer
    field :fecha, :string
    field :unidad, :string
    field :transaccionid, :integer
  end

  object :maquinas do
    field :codigo, :id
    field :nombre, :string
    field :descripcion, :string
  end

  object :proveedor do
    field :codigo, :string
    field :nombre, :string
  end

  object :stock_summary do
    field :cuenta, :string
    field :producto, :string
    field :productocodigo, :string, name: "codigo"
    field :deposito, :string
    field :cantidad1, :string, name: "cantidad"
    field :importe, :string
  end

  object :cheques do
    field :cuenta, :string
    field :conciliado, :string
    field :estado, :string
    field :documento, :string
    field :fechaemision, :string
    field :importemontransaccion, :string
    field :numero, :string
    field :tercero, :string
  end

  object :scores do
    field :animal_id, :string, name: "caravana"
    field :score, :string, name: "registro"
    field :created_by, :string, name: "creador"
    field :updated_at, :string, name: "modificado"
  end

  object :ordenes_de_trabajo do
    field :id_referencia, :id
    field :fecha, :string
    field :status, :string
    field :aplicaciones, list_of(:aplicaciones)
  end

  object :aplicaciones do
    field :cantidad_partes, :string
    field :cantidad_total, :string
    field :fisico_id, :string
    field :fisico_nombre, :string
    field :lote_id, :string
    field :lote_nombre, :string
    field :establecimiento_id, :string
    field :establecimiento_nombre, :string
    field :productor_id, :string
    field :productor_nombre, :string
    field :fisico_tipo_id, :string
    field :actividad_detalle, :string
  end

end

