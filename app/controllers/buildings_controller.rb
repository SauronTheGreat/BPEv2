class BuildingsController < ApplicationController
  # GET /buildings
  # GET /buildings.json
  def index
    @buildings = Building.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @buildings }
    end
  end

  # GET /buildings/1
  # GET /buildings/1.json
  def show
    @building = Building.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @building }
    end
  end

  # GET /buildings/new
  # GET /buildings/new.json
  def new

    @buildings=Building.all
    @localities=Locality.all
    @building = Building.new
    @building.locations.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @building }
    end
  end

  # GET /buildings/1/edit
  def edit
    @building = Building.find(params[:id])
  end

  # POST /buildings
  # POST /buildings.json
  def create
    @building = Building.new(params[:building])

    respond_to do |format|
      if !params[:contact_name].empty?
        @contact = Client.new
        @contact.name=params[:contact_name]
        @contact.save!
      end
      if @building.save
        format.html { redirect_to new_property_path(@building), notice: 'Building was successfully created.' }
      elsif !params[:selected_building].empty?
        format.html { redirect_to new_property_path(Building.find(params[:selected_building])), notice: 'Building was successfully selected.' }
      else
        format.html { redirect_to new_property_path, notice: 'Only Contact was successfully created.' }
      end

    end
  end

  # PUT /buildings/1
  # PUT /buildings/1.json
  def update
    @building = Building.find(params[:id])

    respond_to do |format|
      if !params[:contact_name].empty?
        @contact = Client.new
        @contact.name=params[:contact_name]
        @contact.save!
      end
      if @building.save
        format.html { redirect_to new_property_path(@building), notice: 'Building was successfully created.' }
      elsif !params[:selected_building].empty?
        format.html { redirect_to new_property_path(Building.find(params[:selected_building])), notice: 'Building was successfully selected.' }
      else
        format.html { redirect_to new_property_path, notice: 'Only Contact was successfully created.' }
      end
    end
  end

  # DELETE /buildings/1
  # DELETE /buildings/1.json
  def destroy
    @building = Building.find(params[:id])
    @building.destroy

    respond_to do |format|
      format.html { redirect_to buildings_url }
      format.json { head :no_content }
    end
  end
end
