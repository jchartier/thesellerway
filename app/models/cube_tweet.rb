class Cube_Tweet < ActiveRecord::Base 
	has_and_belongs_to_many :cubes, :join_table => :cube_tweet
	has_and_belongs_to_many :tweets, :join_table => :cube_tweet
	belongs_to :resource
end