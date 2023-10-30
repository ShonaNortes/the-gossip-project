class WelcomeController < ApplicationController
    def landing_page
      @first_name = params[:first_name]
    end
  end