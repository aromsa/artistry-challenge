class InstrumentsController < ApplicationController

  def index
    @instruments = Instrument.all
  end

end

# DONE 4) There should be an index page for all the instruments, where the name of all the 
# instruments should be listed out, alongside each of their classifications.
