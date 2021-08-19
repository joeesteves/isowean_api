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

    field :scores, list_of(:scores) do
      resolve &Resolvers.Content.list_scores/3
    end

    field :stock_summary, list_of(:stock_summary) do
      arg :product, :string
      arg :stock_only, :boolean
      resolve &Resolvers.Content.stock_summary/3
    end

    field :supplementation_report, list_of(:supplementation_report) do
      arg :date_since, :string
      arg :date_to, :string
      resolve &Resolvers.Content.supplementation_report/3
    end

  end

end

