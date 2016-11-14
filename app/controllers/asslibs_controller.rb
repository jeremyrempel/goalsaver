class AsslibsController < ApplicationController
  before_action :require_login
  before_action :set_asslib, only: [:show, :edit, :update, :destroy]

  # GET /asslibs
  # GET /asslibs.json
  def index
    @asslibs = current_user.asslibs
  end

  # GET /asslibs/1
  # GET /asslibs/1.json
  # TODO filter to make sure valid user
  def show
  end

  # GET /asslibs/new
  def new
    @asslib = Asslib.new
  end

  # GET /asslibs/1/edit
  # TODO filter to make sure valid user
  def edit
  end

  # POST /asslibs
  # POST /asslibs.json
  def create
    @asslib = Asslib.new(asslib_params)

    # set defaults
    @asslib.user_id = current_user.id
    @asslib.active = true

    respond_to do |format|
      if @asslib.save
        format.html { redirect_to @asslib, notice: 'Asslib was successfully created.' }
        format.json { render :show, status: :created, location: @asslib }
      else
        format.html { render :new }
        format.json { render json: @asslib.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /asslibs/1
  # PATCH/PUT /asslibs/1.json
  def update
    respond_to do |format|
      if @asslib.update(asslib_params)
        format.html { redirect_to @asslib, notice: 'Asslib was successfully updated.' }
        format.json { render :show, status: :ok, location: @asslib }
      else
        format.html { render :edit }
        format.json { render json: @asslib.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asslibs/1
  # DELETE /asslibs/1.json
  def destroy
    @asslib.destroy
    respond_to do |format|
      format.html { redirect_to asslibs_url, notice: 'Asset/Liability was deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asslib
      @asslib = Asslib.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def asslib_params
      params.require(:asslib).permit(:name, :description, :type, :active, :altype, :currency)
    end
end
