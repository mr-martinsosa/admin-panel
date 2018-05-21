class HomeController < ApplicationController
  def index
    @students = Student.all
    @courses = Course.all
    @teachers = Teacher.all
    @cohorts = Cohort.all
  end
end
