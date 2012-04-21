class MoversController < ApplicationController
  before_filter :authenticate_user!

  # GET /movers
  # GET /movers.json
  def index
    @movers = Mover.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @movers }
    end
  end

  # GET /movers/1
  # GET /movers/1.json
  def show
    @mover = Mover.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mover }
    end
  end

  # GET /movers/new
  # GET /movers/new.json
  def new
    @mover = Mover.new(user: current_user)

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mover }
    end
  end

  # GET /movers/1/edit
  def edit
    @mover = Mover.find(params[:id])
  end

  # POST /movers
  # POST /movers.json
  def create
    @mover = Mover.new(params[:mover])

    respond_to do |format|
      if @mover.save
        format.html { redirect_to @mover, notice: 'Mover was successfully created.' }
        format.json { render json: @mover, status: :created, location: @mover }
      else
        format.html { render action: "new" }
        format.json { render json: @mover.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /movers/1
  # PUT /movers/1.json
  def update
    @mover = Mover.find(params[:id])

    respond_to do |format|
      if @mover.update_attributes(params[:mover])
        format.html { redirect_to @mover, notice: 'Mover was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mover.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movers/1
  # DELETE /movers/1.json
  def destroy
    @mover = Mover.find(params[:id])
    @mover.destroy

    respond_to do |format|
      format.html { redirect_to movers_url }
      format.json { head :no_content }
    end
  end
end
