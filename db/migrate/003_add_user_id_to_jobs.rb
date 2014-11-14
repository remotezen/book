class AddUserIdToJobs < ActiveRecord::Migration
  def self.up
    change_table :jobs do |t|
      t.integer :user_id
    end
  end

  def self.down
    change_table :jobs do |t|
      t.remove :user_id
    end
  end
end
