class RemoveTypeFromConcourse < ActiveRecord::Migration[5.2]
  def change
    remove_column :concourses, :type, :string
  end
end
