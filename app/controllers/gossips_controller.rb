class GossipsController < ApplicationController
  def create
    puts "$" * 60
    puts "ceci est le contenu de params :"
    puts params
    puts "$" * 60
  end

  def index
    @gossips = Gossip.all
  end

  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new(gossip_params)
    if @gossip.save
      flash[:notice] = "The super potin was successfully saved!"
      redirect_to gossips_path
    else
      flash.now[:alert] = "Error: you need to complete this field / the title must be at least 3 characters long / etc."
      render :new
    end
  end

  private

  def gossip_params
    params.require(:gossip).permit(:author, :content)
  end
end
