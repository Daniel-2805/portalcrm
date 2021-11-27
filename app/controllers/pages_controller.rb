class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end
end



def home
  @leaflets = Leaflet.all
end