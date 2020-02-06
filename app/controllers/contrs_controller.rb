class ContrsController < ApplicationController
  before_action :set_contr, only: [:show, :edit, :update, :destroy]

  # GET /contrs
  # GET /contrs.json
  def index
    @contrs = Contr.all
  end

  # GET /contrs/1
  # GET /contrs/1.json
  def show
  end

  # GET /contrs/new
  def new
    @contr = Contr.new
  end

  # GET /contrs/1/edit
  def edit
  end

  # POST /contrs
  # POST /contrs.json
  def create
    @contr = Contr.new(contr_params)

    respond_to do |format|
      if @contr.save
        format.html { redirect_to @contr, notice: 'Contr was successfully created.' }
        format.json { render :show, status: :created, location: @contr }
      else
        format.html { render :new }
        format.json { render json: @contr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contrs/1
  # PATCH/PUT /contrs/1.json
  def update
    respond_to do |format|
      if @contr.update(contr_params)
        format.html { redirect_to @contr, notice: 'Contr was successfully updated.' }
        format.json { render :show, status: :ok, location: @contr }
      else
        format.html { render :edit }
        format.json { render json: @contr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contrs/1
  # DELETE /contrs/1.json
  def destroy
    @contr.destroy
    respond_to do |format|
      format.html { redirect_to contrs_url, notice: 'Contr was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contr
      @contr = Contr.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contr_params
      params.require(:contr).permit(:a1, :a2)
    end
end
