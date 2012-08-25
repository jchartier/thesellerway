class Follow_User < ActiveRecord::Base 
	has_and_belongs_to_many :users, :join_table => :follow_user
	belongs_to :resource
end