class Follow_Cube < ActiveRecord::Base 
	has_and_belongs_to_many :users, :join_table => :follow_cube
	has_and_belongs_to_many :cubes, :join_table => :follow_cube
	belongs_to :resource
end