class RolesController < ApplicationController

  def index
    get_actor
  end

  def new
    get_actor
    redirect_to actors_path if !@actor
    @role = Role.new
  end

  def create
    @actor = Actor.find_by(id: params[:role][:actor_id])
    @role = Role.new(role_params)
    if @role.save
      redirect_to actor_roles_path(@role.actor)
    else
      render :new
    end

  end

  private
    def get_actor
      @actor ||= Actor.find_by(id: params[:actor_id])
      #meaning if @actor is nil, then execute...if its populated just keep as is.
    end

    def role_params
      params.require(:role).permit(:movie_id, :actor_id)
    end

  end
