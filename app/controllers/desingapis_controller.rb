class DesingapisController < ApplicationController
	def mashable
		render json: DesingApi.mashable_authors
	end

	def mashable_titles
		render json: DesingApi.mashable_titles
	end

	def mashable_dates
		render json: DesingApi.mashable_dates
	end

	def reddit_authors
		render json: DesingApi.reddit_authors
	end

	def reddit_titles
		render json: DesingApi.reddit_titles
	end

	def reddit_dates
		render json: DesingApi.reddit_dates
	end

	def digg_authors
		render json: DesingApi.digg_authors
	end

	def digg_titles
		render json: DesingApi.digg_titles
	end

	def digg_dates
		render json: DesingApi.digg_dates
	end
end
