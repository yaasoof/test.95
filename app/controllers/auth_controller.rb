class AuthController < ApplicationController

    def login
        if request.post?
     user = User.find_by(:email=>params[:email], :password=>params[:password]) 
       if !user.nil?
          session[:user_id] = user.id
          session[:user_name] = user.username
         redirect_to root_url, notice: "Thank you for signing up  "
       
       else
         respond_to do |format|
          format.html { render :new }
          format.json { render json: @user.errors, status: :unprocessable_entity }
         end
       end
 
 
      #else
       # @user = User.new 
     end
   end
 
   def logout
 
 session[:user_id]=nil
 session[:user_name]=nil
  redirect_to root_url, notice: "God BY  "
       
   end

end
