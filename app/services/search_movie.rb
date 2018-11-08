
class SearchMovie
	def initialize(query)
		@query = query
		Tmdb::Api.key(Rails.application.credentials.dig(:moviedb_api_key))
	end

	def find(query)
		#Tmdb::Movie.find(query)
		array = []
		@search = Tmdb::Search.new
		@search.resource('movie') # determines type of resource
		@search.query(query) # the query to search against

		results = @search.fetch

		results.each do |movie|
	    hash = {}
	    hash['title'] = movie['title']
	    hash['release'] = movie['release_date']

	    array << hash
    end

    array
	end

  def perform
     find(@query)
  end
end