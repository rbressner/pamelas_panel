class CohortsController < ApplicationController
  before_action :set_cohort, only: [:show, :edit, :update, :destroy]


  # GET /cohorts
  # GET /cohorts.json
  def index
    @cohorts = Cohort.all
    @admins = Admin.all
    if admin_session
      @admin = Admin.find(current_admin.id)
    end
    if teacher_session
      @teacher = Teacher.find(current_teacher.id)
    end
    @courses = Course.all
    @teachers = Teacher.all
  end

  # GET /cohorts/1
  # GET /cohorts/1.json
  def show
    @admins = Admin.all
    if admin_session
      @admin = Admin.find(current_admin.id)
    end

  end

  # GET /cohorts/new
  def new
    @cohort = Cohort.new
    @admins = Admin.all
    if admin_session
      @admin = Admin.find(current_admin.id)
    end
    @courses = Course.all

  end


  # GET /cohorts/1/edit
  def edit
    @admins = Admin.all
    if admin_session
      @admin = Admin.find(current_admin.id)
    end
    @courses = Course.all

    @students = Student.all
    @teachers = Teacher.all

    @cohort_students = CohortStudent.where(cohort_id: @cohort.id).map do |cohort_student|
      cohort_student.student_id
    end

    @cohort_teachers = CohortTeacher.where(cohort_id: @cohort.id).map do |cohort_teacher|
      cohort_teacher.teacher_id
    end

  end

  # POST /cohorts
  # POST /cohorts.json
  def create
    @cohort = Cohort.new(cohort_params)
    @courses = Course.all
    @admins = Admin.all
    if admin_session
      @admin = Admin.find(current_admin.id)
    end
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

  def add_student
    cohort_student = CohortStudent.new(
      cohort_id: params[:cohort_id],
      student_id: params[:student_id]
    )

    if cohort_student.save
      flash[:info] = "Student Added to Cohort"
    else
      flash[:error] = "Something Went Wrong, Please Try Again"
    end

    redirect_to edit_cohort_path(params[:cohort_id])
  end

  def destroy_student
    cohort_student = CohortStudent.where(
      cohort_id: params[:cohort_id],
      student_id: params[:student_id]
    ).first

    cohort_student.destroy

    redirect_to edit_cohort_path(params[:cohort_id])
  end

  def add_teacher
    cohort_teacher = CohortTeacher.new(
      cohort_id: params[:cohort_id],
      teacher_id: params[:teacher_id]
    )

    if cohort_teacher.save
      flash[:info] = "Teacher Added to Cohort"
    else
      flash[:error] = "Something Went Wrong, Please Try Again"
    end

    redirect_to edit_cohort_path(params[:cohort_id])
  end

  def destroy_teacher
    cohort_teacher = CohortTeacher.where(
      cohort_id: params[:cohort_id],
      teacher_id: params[:teacher_id]
    ).first

    cohort_teacher.destroy

    redirect_to edit_cohort_path(params[:cohort_id])
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_cohort
    @cohort = Cohort.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def cohort_params
    params.require(:cohort).permit(:name, :start_date, :end_date, :course_id, :teacher_id, :student_id)
  end
end
