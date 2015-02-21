class RoiSurveysController < ApplicationController
  before_action :set_roi_survey, only: [:show, :edit, :update, :destroy]

  # GET /roi_surveys
  # GET /roi_surveys.json
  def index
    @roi_surveys = RoiSurvey.all
  end

  # GET /roi_surveys/1
  # GET /roi_surveys/1.json
  def show
  end

  # GET /roi_surveys/new
  def new
    @roi_survey = RoiSurvey.new
  end

  # GET /roi_surveys/1/edit
  def edit
  end

  # POST /roi_surveys
  # POST /roi_surveys.json
  def create
    @roi_survey = RoiSurvey.new(roi_survey_params)

    respond_to do |format|
      if @roi_survey.save
        ContactMailer.survey(@roi_survey).deliver
        format.html { redirect_to @roi_survey, notice: 'Roi survey was successfully created.' }
        format.json { render action: 'show', status: :created, location: @roi_survey }
      else
        format.html { render action: 'new' }
        format.json { render json: @roi_survey.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /roi_surveys/1
  # PATCH/PUT /roi_surveys/1.json
  def update
    respond_to do |format|
      if @roi_survey.update(roi_survey_params)
        format.html { redirect_to @roi_survey, notice: 'Roi survey was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @roi_survey.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roi_surveys/1
  # DELETE /roi_surveys/1.json
  def destroy
    @roi_survey.destroy
    respond_to do |format|
      format.html { redirect_to roi_surveys_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roi_survey
      @roi_survey = RoiSurvey.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def roi_survey_params
      params.require(:roi_survey).permit(:store_sq_ft, :haba, :cctv, :walking_svc, :existing_eas, :eas_effective, :lpo_hours, :eas_tags_per_month, :total_weekly_sales, :meat_sales_percent, :num_pos_terminals, :num_exits, :exit_width_ft)
    end
end
