class Cube < ActiveRecord::Base 
	has_and_belongs_to_many :users, :join_table => :cubes
	belongs_to :resource

	attr_accessible :cube_id, :cube_rating, :cube_date, :cube_name, :cube_description, :cube_admin, :cube_out_to_date, :cube_lang
end