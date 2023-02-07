defmodule PhoenixHelpdesk.Support.Representative do
  use Ash.Resource,
    data_layer: AshPostgres.DataLayer

  postgres do
    table "representatives"
    repo PhoenixHelpdesk.Repo
  end

  actions do
    defaults [:create, :read, :update, :destroy]
  end

  attributes do
    uuid_primary_key :id
    attribute :name, :string
  end

  relationships do
    # `has_many` means that the destination attribute is not unique, therefore many related records could exist.
    # We assume that the destination attribute is `representative_id` based
    # on the module name of this resource and that the source attribute is `id`.
    has_many :tickets, PhoenixHelpdesk.Support.Ticket
  end
end
