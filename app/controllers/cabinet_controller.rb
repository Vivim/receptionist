class CabinetController < ApplicationController
	before_action :authenticate_user!

  def details
  	@user = current_user
  end
end
