class UsersController < ApplicationController
    
    def index
        @userdetials = User.all
    end
    
    # def details
    #     @userdetials = User.all
        
    # end
    
    def new
        @userdetials = User.new
    end
    
    def edit
        @userdetials=User.find(params[:id])
    end

    def show
        @userdetials=User.find(params[:id])
    end
    
    def update
        @userdetials=User.find(params[:id])
        
        if @userdetials.update(user_params)
        flash[:notice] = "updated  successfully.."
        redirect_to user_path(@userdetials)
        # <%= "Hello"%>
        else
            render 'edit'
        end
    end
    
    def create
        @userdetials=User.new(user_params)
        if @userdetials.save
        flash[:notice] = "Saved data successfully.."
        redirect_to user_path(@userdetials)
        # <%= "Hello"%>
        else
            
         
        #  flash[:notice] = @userdetials.errors.full_messages
         render 
        end
        
       
    end
    
    def destroy 
         @userdetials=User.find(params[:id])
        
        if @userdetials.destroy(user_params)
        flash[:notice] = "deleted  successfully.."
        redirect_to user_path(@userdetials)
        # <%= "Hello"%>
        else
            render 'show'
        end
        
        
    end

    

    
    private
    
    def user_params
        params.require(:user).permit(:username, :email, :password)
    end
    
end
