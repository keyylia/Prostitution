class MovsController < ApplicationController
  before_action :set_mov, only: [:show, :edit, :update, :destroy]

  # GET /movs
  # GET /movs.json
  def index
    @movs = Mov.all
  end

  # GET /movs/1
  # GET /movs/1.json
  def show
  end

  # GET /movs/new
  def new
    @mov = Mov.new
  end

  # GET /movs/1/edit
  def edit
  end

  # POST /movs
  # POST /movs.json
  def create
    @mov = Mov.new(mov_params)

    respond_to do |format|
      if @mov.save
        format.html { redirect_to @mov, notice: 'Mov was successfully created.' }
        format.json { render :show, status: :created, location: @mov }
      else
        format.html { render :new }
        format.json { render json: @mov.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movs/1
  # PATCH/PUT /movs/1.json
  def update
    respond_to do |format|
      if @mov.update(mov_params)
        format.html { redirect_to @mov, notice: 'Mov was successfully updated.' }
        format.json { render :show, status: :ok, location: @mov }
      else
        format.html { render :edit }
        format.json { render json: @mov.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movs/1
  # DELETE /movs/1.json
  def destroy
    @mov.destroy
    respond_to do |format|
      format.html { redirect_to movs_url, notice: 'Mov was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mov
      @mov = Mov.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mov_params
      params.require(:mov).permit(:title, :date, :description, :image)
    end
end
