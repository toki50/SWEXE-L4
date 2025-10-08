class TopController < ApplicationController
    def main
        if session[:login_uid] != nil
            render "main"
        else
            render "login"
            end
        end
        
        def login
            if params[:uid]== "kindai" and params[:pass] =="sanriko"
                session[:login_uid]=params[:uid]
                redirect_to top_main_path
                
            else
                render "error", status: 442
            end
    end
end
