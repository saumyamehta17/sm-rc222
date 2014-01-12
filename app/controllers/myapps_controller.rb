class MyappsController < ApplicationController
  before_action :set_myapp, only: [:show, :edit, :update, :destroy]

  # GET /myapps
  # GET /myapps.json
  def index
    @myapps = Myapp.all
  end

  # GET /myapps/1
  # GET /myapps/1.json
  def show
  end

  # GET /myapps/new
  def new
    @myapp = Myapp.new
  end

  # GET /myapps/1/edit
  def edit
  end

  # POST /myapps
  # POST /myapps.json
  def create
    @myapp = Myapp.new(myapp_params)

    respond_to do |format|
      if @myapp.save
        format.html { redirect_to @myapp, notice: 'Myapp was successfully created.' }
        format.json { render action: 'show', status: :created, location: @myapp }
      else
        format.html { render action: 'new' }
        format.json { render json: @myapp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /myapps/1
  # PATCH/PUT /myapps/1.json
  def update
    respond_to do |format|
      if @myapp.update(myapp_params)
        format.html { redirect_to @myapp, notice: 'Myapp was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @myapp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /myapps/1
  # DELETE /myapps/1.json
  def destroy
    @myapp.destroy
    respond_to do |format|
      format.html { redirect_to myapps_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_myapp
      @myapp = Myapp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def myapp_params
      params[:myapp]
    end
end
