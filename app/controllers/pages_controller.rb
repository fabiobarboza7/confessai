class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  	@confess = Confess.new
  end
end
