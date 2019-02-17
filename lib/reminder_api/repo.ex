defmodule ReminderApi.Repo do
  use Ecto.Repo,
    otp_app: :reminder_api,
    adapter: Ecto.Adapters.Postgres
end
