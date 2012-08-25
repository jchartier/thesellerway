class User_Vote < ActiveRecord::Base 
	has_and_belongs_to_many :users, :join_table => :user_vote
	has_and_belongs_to_many :tweets, :join_table => :user_vote
	belongs_to :resource
end