require_relative "../services/weather_service"

class CitiesController < ApplicationController

	def index
		@cities = City.all
	end

	def new
	end

	def create
		if params[:city] and params[:population] and params[:landmark]
			city = City.new(
		  		name: params[:city],
		  		population: params[:population],
		  		landmark: params[:landmark]
			)

	  		city.save
		end

		redirect_to action: 'index'

	end

	def updateform
	end

	def update
		if params[:population] and params[:landmark]
			@city = City.all[params[:city].to_sym]
			@city.update(params)
		end

		redirect_to '/cities/view'
	end

end