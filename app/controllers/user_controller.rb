class UserController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
        c=User.all;
        render json: c
    end
    def find
        c=User.find(params[:id]);
        render json: c
    end   
    def create
        # const=params[:id]
        c=User.create(email: params[:email],phone: params[:phone],password: params[:password],name: params[:name]);
        render json: c
    end
    def updateone
        user=User.find(params[:id]);
        const=params[:oldpass]
        # render json: const
        if user.authenticate(const)!=false
         user.update(password: params[:newpass]);
         render html: "Trying to update"
        else
        render html: "There is a problem"
        end
    end
       
end
