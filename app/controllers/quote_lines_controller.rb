class QuoteLinesController < ApplicationController
  before_action :set_quote_line, only: [:show, :edit, :update, :destroy]

  # GET /quote_lines
  # GET /quote_lines.json
  def index
    @quote_lines = QuoteLine.all
  end

  # GET /quote_lines/1
  # GET /quote_lines/1.json
  def show
  end

  # GET /quote_lines/new
  def new
    @quote_line = QuoteLine.new
  end

  # GET /quote_lines/1/edit
  def edit
  end

  # POST /quote_lines
  # POST /quote_lines.json
  def create
    @quote_line = QuoteLine.new(quote_line_params)

    respond_to do |format|
      if @quote_line.save
        format.html { redirect_to @quote_line, notice: 'Quote line was successfully created.' }
        format.json { render action: 'show', status: :created, location: @quote_line }
      else
        format.html { render action: 'new' }
        format.json { render json: @quote_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quote_lines/1
  # PATCH/PUT /quote_lines/1.json
  def update
    respond_to do |format|
      if @quote_line.update(quote_line_params)
        format.html { redirect_to @quote_line, notice: 'Quote line was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @quote_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quote_lines/1
  # DELETE /quote_lines/1.json
  def destroy
    @quote_line.destroy
    respond_to do |format|
      format.html { redirect_to quote_lines_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quote_line
      @quote_line = QuoteLine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quote_line_params
      params.require(:quote_line).permit(:qty, :discount, :product_id, :new_description, :quote_id)
    end
end
