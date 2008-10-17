class CreateFans < ActiveRecord::Migration
  def self.up
    create_table :fans, :id => false do |t|
      t.references :fan, :fav
    end
  end

  def self.down
    drop_table :fans_users
  end
end
