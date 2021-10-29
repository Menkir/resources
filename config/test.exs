import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :playground, PlaygroundWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "zsNpqnS9uA+cOhDAIgQyO57LeztlK5hYnqhJC7juq1B7U/FBJ5dJiawOILGXouMj",
  server: false

# In test we don't send emails.
config :playground, Playground.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
