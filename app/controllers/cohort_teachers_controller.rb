class CohortTeachersController < ApplicationController
    before_action :set_cohort_teacher, only: [:show, :edit, :update, :destroy]

  # GET /cohort_teachers
  # GET /cohort_teachers.json
  def index
    @cohort_teacher = CohortTeacher.all
  end

  # GET /cohort_teachers/1
  # GET /cohort_teachers/1.json
  def show
  end

  # GET /cohort_teachers/new
  def new
    @cohort_teacher = CohortTeacher.new
  end

  # GET /cohort_teachers/1/edit
  def edit
  end

  # POST /cohort_teachers
  # POST /cohort_teachers.json
  def create
    @cohort_teacher = CohortTeacher.new(cohort_teacher_params)

    respond_to do |format|
      if @cohort_teacher.save
        format.html { redirect_to teachers_path, notice: 'Teacher was successfully created.' }
        format.json { render :show, status: :created, location: @cohort_teacher}
      else
        format.html { redirect_to teachers_path, notice: 'Teacher not added'}
        format.json { render json: @cohort_teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cohort_teachers1
  # PATCH/PUT /cohort_teachers/1.json
  def update
    respond_to do |format|
      if @cohort_teacher.update(cohort_teacher_params)
        format.html { redirect_to teachers_path }
        format.json { render :show, status: :ok, location: @cohort_teacher }
      else
        format.html { render :edit }
        format.json { render json: @cohort_teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cohort_teachers/1
  # DELETE /cohort_teachers/1.json
  def destroy
    @cohort_teacher.destroy
    respond_to do |format|
      format.html { redirect_to cohort_teachers_url, notice: 'Cohort Teacher was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cohort_teacher
      @cohort_teacher = CohortTeacher.find(params[:id])
    end

    def set_cohort
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cohort_teacher_params
      params.require(:cohort_teacher).permit(:teacher_id, :cohort_id)
    end
end
