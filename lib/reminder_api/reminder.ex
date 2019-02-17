defmodule ReminderApi.Reminder do
  use Ecto.Schema

  schema "reminder" do
    field :message, :string
  end

  def changeset(reminder, params \\ %{}) do
    reminder
    |> Ecto.Changeset.cast(params, [:message])
    |> Ecto.Changeset.validate_required([:message])
  end
end
