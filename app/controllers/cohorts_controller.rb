class CohortsController < ApplicationController
  before_action :set_cohort, only: [:show, :edit, :update, :destroy]
  before_action :set_teacher, only: [:edit, :update]

  # GET /cohorts
  # GET /cohorts.json
  def index
    @cohorts = Cohort.all
  end

  # GET /cohorts/1
  # GET /cohorts/1.json
  def show
  end

  # GET /cohorts/new
  def new
    @cohort = Cohort.new
    @cohort_teacher = CohortTeacher.new
    @cohort_student = CohortStudent.new
    @teachers = Teacher.all
    @courses = Course.all
  end

  # GET /cohorts/1/edit
  def edit
    @cohort_student_remove = CohortStudent.find_by(cohort_id: params[:id])
    if CohortTeacher.find_by(cohort_id: params[:id])
      @cohort_teacher = CohortTeacher.find_by(cohort_id: params[:id])
    else 
      @cohort_teacher = CohortTeacher.new
    end
    @cohort_student = CohortStudent.new
  end

  # POST /cohorts
  # POST /cohorts.json
  def create
    @cohort = Cohort.new(cohort_params)
    @cohort_teacher = CohortTeacher.new
    @cohort_student = CohortStudent.new
    @teachers = Teacher.all
    @courses = Course.all

    respond_to do |format|
      if @cohort.save
        format.html { redirect_to @cohort, notice: 'Cohort was successfully created.' }
        format.json { render :show, status: :created, location: @cohort }
      else
        format.html { render :new }
        format.json { render json: @cohort.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cohorts/1
  # PATCH/PUT /cohorts/1.json
  def update
    respond_to do |format|
      if @cohort.update(cohort_params)
        format.html { redirect_to @cohort, notice: 'Cohort was successfully updated.' }
        format.json { render :show, status: :ok, location: @cohort }
      else
        format.html { render :edit }
        format.json { render json: @cohort.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cohorts/1
  # DELETE /cohorts/1.json
  def destroy
    @cohort.destroy
    respond_to do |format|
      format.html { redirect_to cohorts_url, notice: 'Cohort was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cohort
      @cohort = Cohort.find(params[:id])
    end

    def set_teacher
      @cohort_teacher = CohortTeacher.find_by(cohort_id: params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cohort_params
      params.require(:cohort).permit(:name, :start_date, :end_date, :course_id)
    end

    def student_params
      params.require(:cohort_student).permit(:student_id)
    end

    def teacher_params
      params.require(:cohort_teacher).permit(:teacher_id, :cohort_id)
    end

    def cohort_student_params
      params.require(:cohort_student).permit(:student_id, :cohort_id)
end
end
