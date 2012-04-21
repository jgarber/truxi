class MoveRequestsController < ApplicationController
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
    @move_request = MoveRequest.new
    @move_request.build_origin
    @move_request.build_destination

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
