class AddUserIdToMultitables < ActiveRecord::Migration
  TABLES = [:videos, :songs, :arts, :articles]
  def change
    TABLES.each do |t|
      change_table(t) do |c|
        c.integer :user_id
      end
    end
  end
end
