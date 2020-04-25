class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    if user_signed_in?
    @user = current_user.first_name
  end
  end
end
