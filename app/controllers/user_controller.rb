require 'httparty'  

class UserController < ApplicationController
  API_KEY = "1ca2cf614eeaa185c2b61753b434b599"
  LIMIT = 10

  def lookProfile
    user = params[:credential]

    # dont know why :credential is not taking the entire row
    @id = user

    render json: user
  end

  def lookHistory
    render json: Log.find_by(:user_id => @id)
  end

  def searchArtist
    @artist_name = params[:artist]
    Log.create(:artist => @artist_name, :user_id => @id)
    getSimilar
  end

  def logout

  end

  def deleteHistory
    Log.where(:user_id => @id).destroy_all
  end

  def getSimilar
    url = "http://ws.audioscrobbler.com/2.0/?method=artist.getsimilar&artist=" + @artist_name + "&api_key=" + API_KEY + "&format=json"
    data = HTTParty.get(url, query: {LIMIT: 10})
    temp = data['similarartists']['artist']
    similar = []
    temp.each do |result|
      similar.push(result)
    end
    render json: similar
  end

end
