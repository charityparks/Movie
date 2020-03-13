class RolesController < ApplicationController
  before_action :get_actor, only: [:index, :new]
  before_action :get_actor, only: [:index, :new]

  def index
    redirect_if_request_invalid
  end

  def new
    redirect_if_request_invalid
    @role = Role.new
  end

  def create
    @actor = Actor.find_by(id: params[:role][:actor_id])
    if user_authorized?
      @role = Role.new(role_params)
      if @role.save
        redirect_to actor_roles_path(@role.actor)
      else
        render :new
      end
    else
      redirect_to actors_path
    end
  end

  def destroy
    Actor.find_by(id: params[:id]).destroy
    redirect_to movies_path
  end

  private

    def get_actor
      @actor ||= Actor.find_by(id: params[:actor_id])
      #meaning if @actor is nil, then execute...if its populated just keep as is.
    end

    def user_authorized?
      @actor.user && (@actor.user.id == current_user.id)
    end

    def redirect_if_request_invalid
      if @actor.nil? || !user_authorized?
        redirect_to actors_path
      end
    end

    def validate_actor
      redirect_to actors_path if !@actor
    end

    def role_params
      params.require(:role).permit(:category, :movie_id, :actor_id)
    end
  end






    # def index
    # redirect_if_unauthorized
    # if params[:actor_id]
    #   @roles = Actor.find(params[:actor_id]).roles
    #     else
    #       @roles = Role.all
    #     end
    #   end
    # end

    # def create
    #   @role = Role.new(role_params)
    #   if @role.save
    #     redirect_to actor_roles_path(@role.actor)
    #   else
    #     render :new
    #   end
    # end
