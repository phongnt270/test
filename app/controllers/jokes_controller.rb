class JokesController < ApplicationController

	def index
		if params[:joke_id]
			@joke = Joke.find(params[:joke_id].to_i+1)
			if @joke
			 	@joke.up_vote if params[:vote_action] == "up"
			 	@joke.down_vote if params[:vote_action] == "down"
			end
		else
			@joke = Joke.first
		end
		respond_to do |format|
			format.html
      		format.json { render json: @joke.to_json }
	    end
	end

    def joke_params
      params.require(:joke).permit(:content,:votes)
    end
end
