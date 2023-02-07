defmodule PhoenixHelpdesk.Support do
  use Ash.Api

  resources do
    registry PhoenixHelpdesk.Support.Registry
  end
end
