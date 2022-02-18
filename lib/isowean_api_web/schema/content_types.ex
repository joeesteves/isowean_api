defmodule IsoweanApiWeb.Schema.ContentTypes do
  use Absinthe.Schema.Notation
  object :matings do
    field :cdcobertura, type: :string
    field :cdmatriz, type: :string
    field :ciclo, type: :string
    field :dtcobertura, type: :string
    field :id1, type: :string
    field :nmfuncionario, type: :string
  end

  object :client_applications do
    field :comprobante, type: :string
    field :cuenta, type: :string
    field :debe_moneda_principal, type: :string
    field :debe_moneda_transaccion, type: :string
    field :documento, type: :string
    field :empresa, type: :string
    field :fecha, type: :string
    field :fechavto, type: :string
    field :haber_moneda_principal, type: :string
    field :haber_moneda_transaccion, type: :string
    field :moneda, type: :string
    field :numero, type: :string
    field :operacion, type: :string
    field :orden, type: :string
    field :organizacion, type: :string
    field :saldocomprobante_moneda_principal, type: :string
    field :saldocomprobante_moneda_transaccion, type: :string
    field :transaccionid, type: :string
    field :transaccionidoriginal, type: :string
  end

  object :sales_analysis do
    field :transacciontiponombre, type: :string
    field :pendientedestino, type: :string
    field :eventohaciendaclasificacion, type: :string
    field :importemonsecundaria, type: :string
    field :totalbruto, type: :string
    field :productorama3, type: :string
    field :producto, type: :string
    field :importemonprincipal, type: :string
    field :ano, type: :string
    field :depositodestino, type: :string
    field :preciomonsecundaria, type: :string
    field :desbaste, type: :string
    field :pendienteorigen, type: :string
    field :establecimientodestino, type: :string
    field :cantidad, type: :string
    field :importe_kgvivos, type: :string
    field :proveedor, type: :string
    field :cantidadpendiente, type: :string
    field :kgdespachados, type: :string
    field :empresa, type: :string
    field :operacionvinculada, type: :string
    field :total, type: :string
    field :totalconceptos, type: :string
    field :unidadstock, type: :string
    field :preciomonsecundaria_kgvivos, type: :string
    field :cotizacion, type: :string
    field :vendedor, type: :string
    field :descripcion, type: :string
    field :preciomonsecundaria_kgfaenado, type: :string
    field :transacconsubtiponombre, type: :string
    field :preciomonprincipal, type: :string
    field :preciosobre, type: :string
    field :cuenta, type: :string
    field :cantidadstock2, type: :string
    field :kg_faenados_kg_vivos, type: :string
    field :condicionpago, type: :string
    field :organizacion, type: :string
    field :fecha, type: :string
    field :depositoorigen, type: :string
    field :moneda, type: :string
    field :comprobante, type: :string
    field :importe_kgfaenados, type: :string
    field :productoraman, type: :string
    field :transaccionidvinculado, type: :string
    field :dimensionvalor, type: :string
    field :unidadventa, type: :string
    field :precio, type: :string
    field :listaprecio, type: :string
    field :importe, type: :string
    field :importe_cab, type: :string
    field :cliente, type: :string
    field :unidadcompra, type: :string
    field :productorama2, type: :string
    field :partida, type: :string
    field :anomes, type: :string
    field :corredor_consig_interm, type: :string
    field :transaccionid, type: :string
    field :docnroint, type: :string
    field :establecimientoorigen, type: :string
    field :kg_cab, type: :string
    field :transaccionsubtipoid, type: :string
    field :kg_cabdespachados, type: :string
    field :cantidadfaenada, type: :string
    field :productorama1, type: :string
    field :preciomonsecundaria_cab, type: :string
    field :contrato, type: :string
  end

  object :cvh_analysis do
    field :transacciontiponombre, type: :string
    field :importe, type: :string
    field :preciosobre, type: :string
    field :kg_faenados_kg_vivos, type: :string
    field :partida, type: :string
    field :fecha, type: :string
    field :transacconsubtiponombre, type: :string
    field :eventohaciendaclasificacion, type: :string
    field :preciomonprincipal, type: :string
    field :establecimiento, type: :string
    field :cotizacion, type: :string
    field :condicionpago, type: :string
    field :contrato, type: :string
    field :dimensionvalor, type: :string
    field :pendienteorigen, type: :string
    field :descripcion, type: :string
    field :docnroint, type: :string
    field :ano, type: :string
    field :producto, type: :string
    field :importemonprincipal, type: :string
    field :precio, type: :string
    field :cantidadfaenada, type: :string
    field :cantidadstock2, type: :string
    field :cliente, type: :string
    field :transaccionid, type: :string
    field :moneda, type: :string
    field :organizacion, type: :string
    field :cantidad, type: :string
    field :an_o_mes, type: :string, name: "anomes"
    field :unidadventa, type: :string
    field :kg_cab, type: :string
    field :empresa, type: :string
    field :unidadstock, type: :string
    field :cantidadpendiente, type: :string
    field :pendientedestino, type: :string
    field :transaccionsubtipoid, type: :string
    field :comprobante, type: :string
    field :preciomonsecundaria, type: :string
    field :unidadcompra, type: :string
  end

  object :linked_ops do
    field :cantidad, type: :string
    field :cantidadaplicada, type: :string
    field :cantidadpendiente, type: :string
    field :cantidadstock1, type: :string
    field :cantidadstock2, type: :string
    field :comprobante1, type: :string
    field :comprobante2, type: :string
    field :cuenta, type: :string
    field :docnroint1, type: :string
    field :docnroint2, type: :string
    field :establecimiento, type: :string
    field :fecha1, type: :string
    field :fecha2, type: :string
    field :importe1, type: :string
    field :importe2, type: :string
    field :moneda, type: :string
    field :precio1, type: :string
    field :precio2, type: :string
    field :producto, type: :string
    field :tercero, type: :string
    field :transaccionid, type: :string
    field :transsubtiponombre, type: :string
    field :unidad1, type: :string
    field :unidad2, type: :string
  end

  object :invoice_report do
    field :transacciontiponombre, type: :string
    field :importe, type: :string
    field :actividadiva, type: :string
    field :preciosobre, type: :string
    field :productoraman, type: :string
    field :totalbruto, type: :string
    field :totalconceptos, type: :string
    field :fecha, type: :string
    field :depositoorigen, type: :string
    field :proveedor, type: :string
    field :preciomonprincipal, type: :string
    field :cotizacion, type: :string
    field :provinciaorigen, type: :string
    field :provinciadestino, type: :string
    field :condicionpago, type: :string
    field :dimensionvalor, type: :string
    field :cuenta, type: :string
    field :numerocontrato, type: :string
    field :total, type: :string
    field :vendedor, type: :string
    field :pendienteorigen, type: :string
    field :descripcion, type: :string
    field :fechaproximopaso, type: :string
    field :gravadoportasaimpositiva, type: :string
    field :docnroint, type: :string
    field :estado, type: :string
    field :codigoprod, type: :string
    field :ano, type: :string
    field :producto, type: :string
    field :percepciones, type: :string
    field :fechacomprobante, type: :string
    field :importemonprincipal, type: :string
    field :precio, type: :string
    field :gravado, type: :string
    field :cantidadstock2, type: :string
    field :cliente, type: :string
    field :identificacionexterna, type: :string
    field :transaccionid, type: :string
    field :moneda, type: :string
    field :organizacion, type: :string
    field :importemonsecundaria, type: :string
    field :marca, type: :string
    field :corredor, type: :string
    field :cantidad, type: :string
    field :an_o_mes, type: :string, name: "anomes"
    field :unidadstock2, type: :string
    field :unidadventa, type: :string
    field :depositodestino, type: :string
    field :descitem, type: :string
    field :unidadstock, type: :string
    field :comprobante, type: :string
    field :empresa, type: :string
    field :preciomonsecundaria, type: :string
    field :comprobanteadicional, type: :string
    field :provinciadestinoitem, type: :string
    field :unidadcompra, type: :string
  end

  object :balance_report do
    field :codigo, type: :string
    field :codigocuenta, type: :string
    field :cuenta, type: :string
    field :cuentaid, type: :string
    field :debemonedappal, type: :string
    field :debemonedasecundaria, type: :string
    field :debemonedatransaccion, type: :string
    field :habermonedappal, type: :string
    field :habermonedasecundaria, type: :string
    field :habermonedatransaccion, type: :string
    field :mes1, type: :string
    field :mes10, type: :string
    field :mes11, type: :string
    field :mes12, type: :string
    field :mes2, type: :string
    field :mes3, type: :string
    field :mes4, type: :string
    field :mes5, type: :string
    field :mes6, type: :string
    field :mes7, type: :string
    field :mes8, type: :string
    field :mes9, type: :string
    field :nmes1, type: :string
    field :nmes10, type: :string
    field :nmes11, type: :string
    field :nmes12, type: :string
    field :nmes2, type: :string
    field :nmes3, type: :string
    field :nmes4, type: :string
    field :nmes5, type: :string
    field :nmes6, type: :string
    field :nmes7, type: :string
    field :nmes8, type: :string
    field :nmes9, type: :string
    field :nodoarbolid, type: :string
    field :ordensecuencial, type: :string
    field :saldoanteriormonedappal, type: :string
    field :saldoanteriormonedasecundaria, type: :string
    field :saldoanteriormonedatransaccion, type: :string
    field :saldomonedappal, type: :string
    field :saldomonedasecundaria, type: :string
    field :saldomonedatransaccion, type: :string
    field :saldoperiodomonedappal, type: :string
    field :saldoperiodomonedasecundaria, type: :string
    field :saldoperiodomonedatransaccion, type: :string
  end

  object :production_supply_report do
    field :ano, type: :string
    field :an_o_mes, type: :string, name: "anomes"
    field :cantidad, type: :string
    field :cliente, type: :string
    field :comprobante, type: :string
    field :depositoorigen, type: :string
    field :descripcion, type: :string
    field :descripcionitem, type: :string
    field :dimensionvalor, type: :string
    field :empresa, type: :string
    field :fecha, type: :string
    field :importevalorizado, type: :string
    field :monedavalorizacion, type: :string
    field :numero, type: :string
    field :ordendeproduccion, type: :string
    field :partida, type: :string
    field :preciovalorizado, type: :string
    field :producto, type: :string
    field :productocodigo, type: :string
    field :productorama1, type: :string
    field :productorama2, type: :string
    field :productorama3, type: :string
    field :productoraman, type: :string
    field :tipodedocumento, type: :string
    field :transaccionid, type: :string
    field :transaccionsubtipoid, type: :string
    field :unidad, type: :string
  end

  object :ledger_report do
    field :ano, type: :string
    field :an_o_mes, type: :string, name: "anomes"
    field :banco, type: :string
    field :chequefecha, type: :string
    field :chequefechavto, type: :string
    field :comprobante, type: :string
    field :comprobanteadicional, type: :string
    field :cotizacion, type: :string
    field :cuenta, type: :string
    field :cuentarama1, type: :string
    field :cuentarama2, type: :string
    field :cuentarama3, type: :string
    field :cuentaraman, type: :string
    field :debemonedappal, type: :string
    field :debemonedasecundaria, type: :string
    field :debemonedatransaccion, type: :string
    field :descripcion, type: :string
    field :detalle, type: :string
    field :dimension, type: :string
    field :dimensionvalor, type: :string
    field :documento, type: :string
    field :empresa, type: :string
    field :fecha, type: :string
    field :fechacargadesde, type: :string
    field :fechacargahasta, type: :string
    field :fechacomprobante, type: :string
    field :fechavto, type: :string
    field :habermonedappal, type: :string
    field :habermonedasecundaria, type: :string
    field :habermonedatransaccion, type: :string
    field :identificacionexterna, type: :string
    field :importeoperacionppal, type: :string
    field :importeoperacionsec, type: :string
    field :importeoperaciontrans, type: :string
    field :moneda, type: :string
    field :monedaid, type: :string
    field :nivel1cliente, type: :string
    field :nivel1dimension, type: :string
    field :nivel2dimension, type: :string
    field :nivel3dimension, type: :string
    field :numero, type: :string
    field :organizacion, type: :string
    field :organizacionid, type: :string
    field :organizacionidtransaccion, type: :string
    field :organizaciontransaccion, type: :string
    field :producto, type: :string
    field :productoid, type: :string
    field :raizdimension, type: :string
    field :saldomonedappal, type: :string
    field :saldomonedasecundaria, type: :string
    field :saldomonedatransaccion, type: :string
    field :sucursal, type: :string
    field :tipodocumento, type: :string
    field :transaccionid, type: :string
  end

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
    field :cantidad, :float
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
    field :mating_at, :string, name: "servicio"
    field :pregnancy_week, :string, name: "semana_servicio"
  end

  object :receptions do
    field :guest_name, :string, name: "visitante"
    field :inserted_at, :string, name: "creado"
    field :room, :room, name: "sala"
  end

  object :room do
    field :name, :string, name: "nombre"
    field :message, :string, name: "mensage"
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
