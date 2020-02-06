class SessionsController < ApplicationController

    def new
    end

    def create
        
        
        # If params does not contain a value for [:name] and there is noting in it's place, request user to login by redirecting to login page. 
        if params[:name]=== nil || params[:name].length === 0
            redirect_to controller: 'sessions', action: 'new'
            # redirect_to '/login' ## works just fine but test required line 11.
        else session[:name] = params[:name]
            # Otherwise create Rail's session is created by assigning params[:name] to session[:name], redirect to home.
            redirect_to '/'
        end
    end

    def destroy
        # Delete the key of :name in session, therefore "logging out". 
        session.delete :name
        # Redirect to login page after deleting session[:name]
        redirect_to '/login'
    end
end
