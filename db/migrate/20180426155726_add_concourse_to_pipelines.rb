class AddConcourseToPipelines < ActiveRecord::Migration[5.2]
  def change
    add_column :pipelines, :concourse, :string
  end
end
