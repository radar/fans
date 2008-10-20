class Group < ActiveRecord::Base
  has_many :memberships, :depedent => :destroy
  has_many :members, :through => :memberships, :source => "user"
end