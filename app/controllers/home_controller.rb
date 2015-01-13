class HomeController < ApplicationController


  def index

    @data = Policeshootings.where(:city.ne => nil)

  end



end
