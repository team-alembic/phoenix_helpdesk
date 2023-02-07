import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :phoenix_helpdesk, PhoenixHelpdesk.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "phoenix_helpdesk_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :phoenix_helpdesk, PhoenixHelpdeskWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "j5STHgGJvzAbtBM4tIxUytL2JT9S1r0Jb9pV/igJTlYT9zAftepqYjS6v+fDiEYT",
  server: false

# In test we don't send emails.
config :phoenix_helpdesk, PhoenixHelpdesk.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
