class AddEnvTypeToConcourse < ActiveRecord::Migration[5.2]
  def change
    add_column :concourses, :env_type, :string
  end
end
