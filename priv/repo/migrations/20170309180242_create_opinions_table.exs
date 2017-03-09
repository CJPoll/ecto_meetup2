defmodule EctoMeetup.Repo.Migrations.CreateOpinionsTable do
  use Ecto.Migration

  def change do
    create table(:opinions) do
      add :opinion, :string, null: false
      add :user_id, references(:users), null: false
    end

    create table(:votes) do
      add :user_id, references(:users), null: false
      add :opinion_id, references(:opinions), null: false
    end

    create unique_index(:votes, [:user_id, :opinion_id])
  end
end
