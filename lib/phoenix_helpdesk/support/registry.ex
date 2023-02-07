defmodule PhoenixHelpdesk.Support.Registry do
  use Ash.Registry,
    extensions: [
      # This extension adds helpful compile time validations
      Ash.Registry.ResourceValidations
    ]

  entries do
    entry PhoenixHelpdesk.Support.Ticket
    entry PhoenixHelpdesk.Support.Representative
  end
end
