class SuggestBoxesController < ApplicationController
  before_action :set_suggest_box, only: [:show, :edit, :update, :destroy]

  # GET /suggest_boxes
  # GET /suggest_boxes.json
  def index
    @suggest_boxes = SuggestBox.all
  end

  # GET /suggest_boxes/1
  # GET /suggest_boxes/1.json
  def show
  end

  # GET /suggest_boxes/new
  def new
    @suggest_box = SuggestBox.new
  end

  # GET /suggest_boxes/1/edit
  def edit
  end

  # POST /suggest_boxes
  # POST /suggest_boxes.json
  def create
    @suggest_box = SuggestBox.new(suggest_box_params)

    respond_to do |format|
      if @suggest_box.save
        format.html { 
          Mail_serv.new_suggest(@suggest_box,@suggest_box.email)
          redirect_to @suggest_box, notice: 'Suggest box was successfully created.' }
        format.json { render :show, status: :created, location: @suggest_box }
      else
        format.html { render :new }
        format.json { render json: @suggest_box.errors, status: :unprocessable_entity }
      end
    end
  end

=begin
  # PATCH/PUT /suggest_boxes/1
  # PATCH/PUT /suggest_boxes/1.json
  def update
    respond_to do |format|
      if @suggest_box.update(suggest_box_params)
        format.html { redirect_to @suggest_box, notice: 'Suggest box was successfully updated.' }
        format.json { render :show, status: :ok, location: @suggest_box }
      else
        format.html { render :edit }
        format.json { render json: @suggest_box.errors, status: :unprocessable_entity }
      end
    end
  end
=end
  # DELETE /suggest_boxes/1
  # DELETE /suggest_boxes/1.json
  def destroy
    @suggest_box.destroy
    respond_to do |format|
      format.html { redirect_to suggest_boxes_url, notice: 'Suggest box was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_suggest_box
      @suggest_box = SuggestBox.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def suggest_box_params
      params.require(:suggest_box).permit(:name, :email, :comment)
    end
end
