class NewsboardsController < ApplicationController
  # GET /newsboards
  # GET /newsboards.json
  def index
    @newsboards = Newsboard.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @newsboards }
    end
  end

  # GET /newsboards/1
  # GET /newsboards/1.json
  def show
    @newsboard = Newsboard.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @newsboard }
    end
  end

  # GET /newsboards/new
  # GET /newsboards/new.json
  def new
    @newsboard = Newsboard.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @newsboard }
    end
  end

  # GET /newsboards/1/edit
  def edit
    @newsboard = Newsboard.find(params[:id])
  end

  # POST /newsboards
  # POST /newsboards.json
  def create
    @newsboard = Newsboard.new(params[:newsboard])

    respond_to do |format|
      if @newsboard.save
        format.html { redirect_to @newsboard, notice: 'Newsboard was successfully created.' }
        format.json { render json: @newsboard, status: :created, location: @newsboard }
      else
        format.html { render action: "new" }
        format.json { render json: @newsboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /newsboards/1
  # PUT /newsboards/1.json
  def update
    @newsboard = Newsboard.find(params[:id])

    respond_to do |format|
      if @newsboard.update_attributes(params[:newsboard])
        format.html { redirect_to @newsboard, notice: 'Newsboard was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @newsboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newsboards/1
  # DELETE /newsboards/1.json
  def destroy
    @newsboard = Newsboard.find(params[:id])
    @newsboard.destroy

    respond_to do |format|
      format.html { redirect_to newsboards_url }
      format.json { head :no_content }
    end
  end
end
