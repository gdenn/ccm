class AddStatusToPipelines < ActiveRecord::Migration[5.2]
  def change
    add_column :pipelines, :status, :string
  end
end
