class City
	attr_accessor :name, :landmark, :population, :weather
	$cities = {}
	
	def initialize(city_params)
		@name = city_params[:name]
		@landmark = city_params[:landmark]
		@population = city_params[:population]
		@weather = WeatherService.get(@name)
	end

	def save
		$cities[@name.to_sym] = self
	end

	def self.all
		$cities
	end

	def update(update_params)
		if (update_params.has_key?(:population)) and (not update_params[:population].empty?)
      @population = update_params[:population]
    end

    if (update_params.has_key?(:landmark)) and (not update_params[:landmark].empty?)
      @landmark = update_params[:landmark]
    end

	end
end