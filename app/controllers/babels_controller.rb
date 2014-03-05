class BabelsController < ApplicationController
  before_action :set_babel, only: [:show, :edit, :update, :destroy]

  # GET /babels
  # GET /babels.json
  def index
    @babels = Babel.all
  end

  # GET /babels/1
  # GET /babels/1.json
  def show
  end

  # GET /babels/new
  def new
    @babel = Babel.new
  end

  # GET /babels/1/edit
  def edit
  end

  # POST /babels
  # POST /babels.json
  def create
    @babel = Babel.new(babel_params)

    respond_to do |format|
      if @babel.save
        format.html { redirect_to @babel, notice: 'Babel was successfully created.' }
        format.json { render action: 'show', status: :created, location: @babel }
      else
        format.html { render action: 'new' }
        format.json { render json: @babel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /babels/1
  # PATCH/PUT /babels/1.json
  def update
    respond_to do |format|
      if @babel.update(babel_params)
        format.html { redirect_to @babel, notice: 'Babel was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @babel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /babels/1
  # DELETE /babels/1.json
  def destroy
    @babel.destroy
    respond_to do |format|
      format.html { redirect_to babels_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_babel
      @babel = Babel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def babel_params
      params.require(:babel).permit(:message)
    end
end
