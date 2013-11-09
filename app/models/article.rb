class Article < ActiveRecord::Base
  require 'net/http'
  
  def self.search( txt )
    uri = URI.parse( "https://www.googleapis.com/freebase/v1/search?query=#{txt[0]}" )
    request = Net::HTTP.get( uri )
  end
end
