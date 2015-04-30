class SearchController < ApplicationController
	def index
		search = params[:q]
		if search 
			resp = Typhoeus.get("http://www.omdbapi.com", params: {s: search})
			@results = JSON.parse(resp.body)["Search"]
		else
			@results = []
		end

	end


	def show
		movie_params = params[:q]
		if movie_params
			resp = Typhoeus.get("http://www.omdbapi.com", params: {i: movie_params})
			@movie = JSON.parse(resp.body)
		else
			@movie = {}
		end
	end
end
