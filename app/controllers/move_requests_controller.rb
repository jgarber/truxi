class MoveRequestsController < ApplicationController
 http_basic_authenticate_with :name => "truxi", :password => "optimus", except: :new 

  # GET /move_requests
  # GET /move_requests.json
  def index
    @move_requests = MoveRequest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @move_requests }
    end
  end

  # GET /move_requests/1
  # GET /move_requests/1.json
  def show
    @move_request = MoveRequest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @move_request }
    end
  end

  # GET /move_requests/new
  # GET /move_requests/new.json
  def new
    @move_request = MoveRequest.new(params[:move_request])
    @move_request.build_origin unless @move_request.origin
    @move_request.origin.address = 'Philadelphia, PA' unless @move_request.origin.address.present?
    @move_request.build_destination unless @move_request.destination
    if @move_request.origin
      @move_request.origin.geocode
      mover_letter = 'A'
      @movers = Mover.all.map {|m| m.distance = m.miles_away_from(@move_request.origin); m }.sort_by(&:distance)
      @marker_objs = @movers + [@move_request.origin]
      @markers = @marker_objs.to_gmaps4rails do |object, marker|
        if object.is_a?(Location)
          #marker.picture({picture: "http://maps.google.com/mapfiles/ms/micons/green.png"})
          marker.json({id: object.id})
        else
          marker.picture({picture: "http://www.google.com/mapfiles/marker#{mover_letter}.png"})
          marker.json({id: object.id}).tap do
            mover_letter = mover_letter.succ # Hacky
          end
        end
      end
      #@markers = [@move_request.origin].to_gmaps4rails do |location, marker|
        #marker.picture({
          #picture: "http://www.google.com/mapfiles/markerZ.png"
         #})
        #marker.json({id: location.id})
      #end
    end

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @move_request }
    end
  end

  # GET /move_requests/1/edit
  def edit
    @move_request = MoveRequest.find(params[:id])
  end

  # POST /move_requests
  # POST /move_requests.json
  def create
    @move_request = MoveRequest.new(params[:move_request])

    respond_to do |format|
      if @move_request.save
        format.html { redirect_to @move_request, notice: 'Move request was successfully created.' }
        format.json { render json: @move_request, status: :created, location: @move_request }
      else
        format.html { render action: "new" }
        format.json { render json: @move_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /move_requests/1
  # PUT /move_requests/1.json
  def update
    @move_request = MoveRequest.find(params[:id])

    respond_to do |format|
      if @move_request.update_attributes(params[:move_request])
        format.html { redirect_to @move_request, notice: 'Move request was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @move_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /move_requests/1
  # DELETE /move_requests/1.json
  def destroy
    @move_request = MoveRequest.find(params[:id])
    @move_request.destroy

    respond_to do |format|
      format.html { redirect_to move_requests_url }
      format.json { head :no_content }
    end
  end
end
