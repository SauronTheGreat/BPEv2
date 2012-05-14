class FlatsController < ApplicationController

  def new_property
    @buildings=Building.all
    @localities=Locality.all
    @furnstats=Furnstat.all
    @sources=Source.all

    if params[:building_id]
      @building=Building.find(params[:building_id])
    else
      @building = Building.new
    end
    @building.locations.build
    @building.build_address
    @flat = @building.flats.build

    @flat.build_bhk_config
    @flat.build_flat_key_datum

    @bhks=Bhk.all
    @buildings=Building.all

    @contacts=Client.all
    @flat.connections.build

  end

  # GET /flats
  # GET /flats.json
  def index
    @flats = Flat.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @flats }
    end
  end

  # GET /flats/1
  # GET /flats/1.json
  def show
    @flat = Flat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @flat }
    end
  end

  # GET /flats/new
  # GET /flats/new.json
  def new

    @flat = Flat.new
    @building=Building.find(params[:building_id])


    @flat.build_bhk_config
    @bhks=Bhk.all
    @buildings=Building.all

    @flat.connections.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @flat }
    end
  end

  # GET /flats/1/edit
  def edit
    @flat = Flat.find(params[:id])
    @bhks=Bhk.all

  end

  # POST /flats
  # POST /flats.json
  def create
    @flat = Flat.new(params[:flat])

    respond_to do |format|
      if @flat.save
        format.html { redirect_to @flat, notice: 'Flat was successfully created.' }
        format.json { render json: @flat, status: :created, location: @flat }
      else
        format.html { render action: "new" }
        format.json { render json: @flat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /flats/1
  # PUT /flats/1.json
  def update
    @flat = Flat.find(params[:id])

    respond_to do |format|
      if @flat.update_attributes(params[:flat])
        format.html { redirect_to @flat, notice: 'Flat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @flat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flats/1
  # DELETE /flats/1.json
  def destroy
    @flat = Flat.find(params[:id])
    @flat.destroy

    respond_to do |format|
      format.html { redirect_to flats_url }
      format.json { head :no_content }
    end
  end
end
