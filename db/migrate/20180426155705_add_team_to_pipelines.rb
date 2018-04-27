class AddTeamToPipelines < ActiveRecord::Migration[5.2]
  def change
    add_column :pipelines, :team, :string
  end
end
