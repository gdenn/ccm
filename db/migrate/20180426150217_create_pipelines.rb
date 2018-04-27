class CreatePipelines < ActiveRecord::Migration[5.2]
  def change
    create_table :pipelines do |t|
      t.string :name
      t.date :last_poll
      t.date :discovered

      t.timestamps
    end
  end
end
