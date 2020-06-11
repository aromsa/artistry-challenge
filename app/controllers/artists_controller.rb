class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    artist = Artist.create(artist_params)
    if artist.valid?
      redirect_to artist_path(artist)
    else
      flash[:artist_errors] = artist.errors.full_messages
      redirect_to new_artist_path
    end
  end
 
  private

  def artist_params
    params.require(:artist).permit!
  end


end

# DONE 2) In the artist's show page, I should be able to see the artist's age, 
# title and name. I should also be able to see all the instruments that that 
# specific artist plays.

# DONE 3) On the index page for an artist, there should be a list of all the artists' 
# names. Clicking on one artist's name should take me to that artist's show page.

# DONE 5) I should also be able to save a new artist into the database. While it's possible 
# for an artist to have the same name, an artist must have a name. An artist must also 
#   have an unique title. After successfully creating an artist, I should be taken to 
#   the artist's show page.