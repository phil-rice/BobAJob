class JobbersController < ApplicationController
  # GET /jobbers
  # GET /jobbers.json
  def index
    @jobbers = Jobber.all
   
  end

  # GET /jobbers/1
  # GET /jobbers/1.json
  def show
    @jobber = Jobber.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @jobber }
    end
  end

  # GET /jobbers/new
  # GET /jobbers/new.json
  def new
    @jobber = Jobber.new
    @organisation=Organisation.find(params[:organisation])
    @jobber.organisation = @organisation

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @jobber }
    end
  end

  # GET /jobbers/1/edit
  def edit
    @jobber = Jobber.find(params[:id])
  end

  # POST /jobbers
  # POST /jobbers.json
  def create
    @jobber = Jobber.new(params[:jobber])

    respond_to do |format|
      if @jobber.save
        format.html { redirect_to @jobber, notice: 'Jobber was successfully created.' }
        format.json { render json: @jobber, status: :created, location: @jobber }
      else
        format.html { render action: "new" }
        format.json { render json: @jobber.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /jobbers/1
  # PUT /jobbers/1.json
  def update
    @jobber = Jobber.find(params[:id])

    respond_to do |format|
      if @jobber.update_attributes(params[:jobber])
        format.html { redirect_to @jobber, notice: 'Jobber was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @jobber.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobbers/1
  # DELETE /jobbers/1.json
  def destroy
    @jobber = Jobber.find(params[:id])
    @jobber.destroy

    respond_to do |format|
      format.html { redirect_to jobbers_url }
      format.json { head :no_content }
    end
  end
end
