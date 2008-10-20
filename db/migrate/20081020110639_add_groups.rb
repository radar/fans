class AddGroups < ActiveRecord::Migration
  def self.up
    create_table :groups do |t|
      t.string :name
    end
    
    create_table :memberships, :id => false do |t|
      t.references :user, :group
    end
  end

  def self.down
    drop_table :groups
    drop_table :memberships
  end
end
