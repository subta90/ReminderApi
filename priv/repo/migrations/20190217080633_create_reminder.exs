defmodule ReminderApi.Repo.Migrations.CreateReminder do
  use Ecto.Migration

  def change do
    create table(:reminder) do
      add :message, :string
    end
  end
end
