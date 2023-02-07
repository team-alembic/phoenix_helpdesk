defmodule PhoenixHelpdesk.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_helpdesk,
    adapter: Ecto.Adapters.Postgres
end
