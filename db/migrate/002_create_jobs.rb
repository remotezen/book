class CreateJobs < ActiveRecord::Migration
  def self.up
    create_table :jobs do |t|
      t.string :title
      t.string :location
      t.text   :description
      t.string :contact
      t.date   :time_start
      t.date   :time_end
    end
  end

  def self.down
    drop_table :jobs
  end
end
