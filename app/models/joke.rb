class Joke < ActiveRecord::Base
	
	def up_vote
		self.votes += 1
		self.save
	end

	def down_vote
		self.votes -= 1 if self.votes > 0
		self.save
	end
end
