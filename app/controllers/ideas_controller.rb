class IdeasController < ApplicationController
  # GET /ideas
  # GET /ideas.json
  
  before_filter :login_required

  #Authentication
  before_filter :authenticate_user!
  
  #Authorization
  load_and_authorize_resource
  
  def index
    if params[:tag]
      @ideas = current_user.ideas.tagged_with(params[:tag])
    else
      @ideas = current_user.ideas.all
    end
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ideas }
    end
  end

  # GET /ideas/1
  # GET /ideas/1.json
  def show
    

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @idea }
    end
  end

  # GET /ideas/new
  # GET /ideas/new.json
  def new
   

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @idea }
    end
  end

  # GET /ideas/1/edit
  def edit
   
  end

  # POST /ideas
  # POST /ideas.json
  def create
   
    @idea.user = current_user
    
    respond_to do |format|
      if @idea.save
        format.html { redirect_to ideas_url, notice: 'Idea was successfully created.' }
        format.json { render json: @idea, status: :created, location: @idea }
      else
        format.html { render action: "new" }
        format.json { render json: @idea.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ideas/1
  # PUT /ideas/1.json
  def update
   

    respond_to do |format|
      if @idea.update_attributes(params[:idea])
        format.html { redirect_to ideas_url, notice: 'Idea was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @idea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ideas/1
  # DELETE /ideas/1.json
  def destroy
  
    @idea.destroy

    respond_to do |format|
      format.html { redirect_to ideas_url }
      format.json { head :no_content }
    end
  end
end
