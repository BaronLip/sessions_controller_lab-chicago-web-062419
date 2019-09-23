class SessionsController < ApplicationController

    def new
    end

    def create
        if session[:name] = params[:name]
            redirect_to '/'
        elsif
            params[:name] == nil || params[:name].length == 0
            redirect_to '/login'
        end
            
    end

    def destroy
        session.delete :name
    end
end
