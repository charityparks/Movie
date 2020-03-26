class RolesController < ApplicationController
  before_action :get_role, except: [:index]

  def index
    @roles = Role.all
  end

  def new
    @role = Role.new
  end

  def create
    # if user_authorized?
      @role = Role.new(role_params)
      if @role.save
        render :new
    end
  end

  def edit
  end

  def update
    @role.update(role_params)
    if @role.save
      redirect_to actor_path
    else
      render :edit
    end
  end

  def destroy
    @role.destroy
    redirect_to movies_path
  end

  private

    def get_role
      @role = Role.find_by(id: params[:id])
    end

    def role_params
      params.require(:role).permit(:category, :movie_id, :actor_id)
    end
  end
