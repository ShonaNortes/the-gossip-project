class GossipsController < ApplicationController

    def new
    @gossip = Gossip.new
    end

    def contact
    end

    def team
    end

    def create
        @gossip = Gossip.new(gossip_params)
        if @gossip.save
          redirect_to @gossip
        else
          render 'new'
        end
      end
    
    def index
        @gossips = Gossip.all
    end
      
    def show
        @gossip = Gossip.find(params[:id])
    end
    
    def edit
        @gossip = Gossip.find(params[:id])
      end
      
    def update
        @gossip = Gossip.find(params[:id])
       if @gossip.update(gossip_params)
          redirect_to @gossip
       exelse
          render 'edit'
        end
    end

    def destroy
        @gossip = Gossip.find(params[:id])
        @gossip.destroy
        redirect_to gossips_path
      end

      private

    def gossip_params
        params.require(:gossip).permit(:author, :content)
    end

      
end

end