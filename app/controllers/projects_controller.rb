class ProjectsController < ApplicationController
  before_action :set_portfolio_item, only: [:edit, :show, :update, :destroy]
  access all: [:show, :index], user: {except: [:destroy, :new, :create, :update, :edit, :sort]}, site_admin: :all
  
  def index
    @portfolio_items = Project.by_position
  end

  def sort
    params[:order].each do |key, value|
      Project.find(value[:id]).update(position: value[:position])
    end

    render nothing: true
  end

  def new
    @portfolio_item = Project.new
  end

  def create
    @portfolio_item = Project.new(portfolio_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to projects_path, notice: 'Your portfolio item is now live.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to projects_path, notice: 'The record successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def show
  end

  def destroy
    # Destroy/delete the record
    @portfolio_item.destroy

    # Redirect
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Record was removed.' }
    end
  end

  private

  def portfolio_params
    params.require(:project).permit(:title,
                                      :subtitle,
                                      :body,
                                      :main_image,
                                      :thumb_image
                                     )
  end

  def set_portfolio_item
    @portfolio_item = Project.find(params[:id])
  end
end