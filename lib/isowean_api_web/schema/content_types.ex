defmodule IsoweanApiWeb.Schema.ContentTypes do
  use Absinthe.Schema.Notation

  object :maquinas do
    field :codigo, :id
    field :nombre, :string
    field :descripcion, :string
  end

  object :proveedor do
    field :codigo, :string
    field :nombre, :string
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

