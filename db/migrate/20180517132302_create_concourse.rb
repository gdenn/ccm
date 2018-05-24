class CreateConcourse < ActiveRecord::Migration[5.2]
  def change
    create_table :concourses do |t|
        t.string :name
        t.string :host
        t.string :type
        t.timestamps
    end

    create_table :teams do |t|
        t.string :name
        t.string :username
        t.string :password
        t.belongs_to :concourse, index: true
        add_reference :teams, :concourse, foreign_key: true
        t.timestamps
    end

    create_table :pipelines do |t|
        t.string :name
        t.string :status
        t.belongs_to :team, index: true
        add_reference :pipelines, :team, foreign_key: true
        t.timestamps
    end

    create_table :jobs do |t|
        t.string :name
        t.boolean :paused
        t.belongs_to :pipeline, index: true
        add_reference :jobs, :pipeline, foreign_key: true
        t.timestamps
    end

    create_table :builds do |t|
        t.integer :build_number
        t.status :string
        t.date :started
        t.date :ended
        t.belongs_to :pipeline, index: true
        add_reference :builds, :job, foreign_key: true
        t.timestamps
    end
    
  end
end
