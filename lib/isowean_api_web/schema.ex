defmodule IsoweanApiWeb.Schema do
  use Absinthe.Schema
  import_types IsoweanApiWeb.Schema.ContentTypes

  alias IsoweanApiWeb.Resolvers

  query do
    @desc "Get what you ask"
    field :maquinas, list_of(:maquinas) do
      resolve &Resolvers.Content.list_maquinas/3
    end

    field :proveedor, list_of(:proveedor) do
      resolve &Resolvers.Content.list_proveedor/3
    end

    field :cheques, list_of(:cheques) do
      resolve &Resolvers.Content.list_cheques/3
    end
  end

end

