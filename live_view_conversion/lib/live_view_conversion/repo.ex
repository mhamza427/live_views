defmodule LiveViewConversion.Repo do
  use Ecto.Repo,
    otp_app: :live_view_conversion,
    adapter: Ecto.Adapters.Postgres
end
