class OwnersController < ApplicationController


def show
    owner = Owner.find_by(name: params[:id])
    render :json =>  owners
end 

def create 
    owner = Owner.find_or_create_by(params.require(:owner).permit(:name, :address))
    if owner.save
        render :json =>  owner
    else
        flash[:message]=owner.errors.full_messages
    end
end 



end
