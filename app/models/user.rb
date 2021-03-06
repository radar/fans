class User < ActiveRecord::Base
  
  # Fans and Favourites 
  has_and_belongs_to_many :favs, :class_name => "User", :join_table => "fans", :association_foreign_key => "fav_id", :foreign_key => "fan_id"
  has_and_belongs_to_many :fans, :class_name => "User", :join_table => "fans", :association_foreign_key => "fan_id", :foreign_key => "fav_id"
  
  # Groups & Memberships
  has_many :memberships, :dependent => :destroy
  has_many :groups, :through => :memberships
end
