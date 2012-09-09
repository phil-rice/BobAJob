class PuntersController < ApplicationController
  # GET /punters
  # GET /punters.json
  def index
    @punters = Punter.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @punters }
    end
  end

  # GET /punters/1
  # GET /punters/1.json
  def show
    @punter = Punter.find(params[:id])
    @jobs=@punter.jobs
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @punter }
    end
  end

  # GET /punters/new
  # GET /punters/new.json
  def new
    @punter = Punter.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @punter }
    end
  end

  # GET /punters/1/edit
  def edit
    @punter = Punter.find(params[:id])
  end

  # POST /punters
  # POST /punters.json
  def create
    @punter = Punter.new(params[:punter])

    respond_to do |format|
      if @punter.save
        format.html { redirect_to @punter, notice: 'Punter was successfully created.' }
        format.json { render json: @punter, status: :created, location: @punter }
      else
        format.html { render action: "new" }
        format.json { render json: @punter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /punters/1
  # PUT /punters/1.json
  def update
    @punter = Punter.find(params[:id])

    respond_to do |format|
      if @punter.update_attributes(params[:punter])
        format.html { redirect_to @punter, notice: 'Punter was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @punter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /punters/1
  # DELETE /punters/1.json
  def destroy
    @punter = Punter.find(params[:id])
    @punter.destroy

    respond_to do |format|
      format.html { redirect_to punters_url }
      format.json { head :no_content }
    end
  end
end
