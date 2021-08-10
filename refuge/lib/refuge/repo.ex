defmodule Refuge.Repo do
  use Ecto.Repo,
    otp_app: :refuge,
    adapter: Ecto.Adapters.Postgres
end
