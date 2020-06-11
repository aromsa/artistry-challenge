class ArtistInstrumentsController < ApplicationController

  def new
    @artist_instrument = ArtistInstrument.new
    @artists = Artist.all 
    @instruments = Instrument.all
  end

  def create
    artist_instrument = ArtistInstrument.create(ai_params)
    redirect_to artist_path(artist_instrument.artist)
  end

  private

  def ai_params
    params.require(:artist_instrument).permit!
  end

end

# 1) As a user, I should be able to fill out a form to connect an artist 
# with an instrument from the database. This form should be made with at 
# least one dropdown (potentially two dropdowns). Upon successfully creating 
# the association, I should be redirected to the artist's show page.
