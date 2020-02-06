class SessionsController < ApplicationController

    def new
    end

    def create
        # if Rail's session is created by assigning params[:name] to session[:name], redirect to home.
        if session[:name] = params[:name]
            redirect_to '/'
        elsif
        # Otherwise, if params does not contain a value for [:name] and there is noting in it's place, request user to login. 
            params[:name] == nil || params[:name].length == 0
            redirect_to '/login'
        end
            
    end

    def destroy
        # Delete the key of :name in session, therefore "logging out". 
        session.delete :name
        # Redirect to login page after deleting session[:name]
        redirect_to '/login'
    end
end
