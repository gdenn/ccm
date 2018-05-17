class CreateConcourse < ActiveRecord::Migration[5.2]
  def change
    create_table :concourses do |t|
        t.string :name
        t.string :host
    end

    create_table :team do |t|
        t.string :name
        t.string :username
        t.string :password
        t.belongs_to :concourse, index: true
    end

    create_table :pipeline do |t|
        t.string :name
        t.string :status
        t.belongs_to :team, index: true
    end

    create_table :build do |t|
        t.integer :build_number
        t.belongs_to :pipeline, index: true
    end
    
  end
end
