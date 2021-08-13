defmodule IsoweanApi.Repo do
  use Ecto.Repo,
    otp_app: :isowean_api,
    adapter: Ecto.Adapters.Postgres
end
