class UsersController < ApplicationController
    skip_before_action :authenticate_request, only: [:create]
    before_action :set_user, only: [:show, :destroy]

    #GET /users
    def index
        @users = User.all
        render json: @users, status: :ok
    end

    #GET /users/{user_id}
    def show
        render json: @user, status: :ok
    end

    #POST /users
    def create
        @user = User.new(user_params)
        if @user.save
            render json: @user, status: :created
        else
            render json: {errors: @user.errors.full_messages},
            status: :unprocessable_entity
        end
    end


    private
        def user_params
            params.permit(:name, :email, :password)
        end

        def set_user
            @user = User.find(params[:id])
        end

end