defmodule PhoenixHelpdesk.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_helpdesk,
    adapter: Ecto.Adapters.Postgres

  def installed_extensions do
    ["uuid-ossp", "citext"]
  end
end
