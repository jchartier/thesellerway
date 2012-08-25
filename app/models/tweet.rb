class Tweet < ActiveRecord::Base 
	belongs_to :resource

	attr_accessible :tweet_id, :user_id, :tweet_pic, :tweet_date, :tweet_text, :tweet_up, :tweet_down, :tweet_owner
end