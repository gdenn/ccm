class CreateConcourse < ActiveRecord::Migration[5.2]
  def change
    create_table :concourses do |t|
        t.string :name
        t.string :host
    end

    create_table :teams do |t|
        t.string :name
        t.string :username
        t.string :password
        t.belongs_to :concourse, index: true
        add_reference :concourses, :concourse, foreign_key: true
    end

    create_table :pipelines do |t|
        t.string :name
        t.string :status
        t.belongs_to :team, index: true
        add_reference :teams, :team, foreign_key: true
    end

    create_table :builds do |t|
        t.integer :build_number
        t.belongs_to :pipeline, index: true
        add_reference :pipelines, :pipeline, foreign_key: true
    end
    
  end
end
