defmodule AppUsingLiveTag.Repo do
  use Ecto.Repo,
    otp_app: :app_using_live_tag,
    adapter: Ecto.Adapters.Postgres
end
