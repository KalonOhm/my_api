class JobPostingsController < ApplicationController
  def create 
    job_posting = JobPosting.new(full_or_part_time: params[:full_or_part_time], job_description: params[:job_description], qualifications: params[:qualifications], company_offering: params[:company_offering])

    #def save
    if job_posting.save 
      render json: job_posting, status: :created
    else
      render json: { errors: job_posting.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def index
    render json: JobPosting.all, status: :ok
  end

  def show
    job_posting = JobPosting.find(params[:id])
    render json: job_posting, status: :ok
  end

  def update
    job_posting = JobPosting.find(params[:id])
    
    if job_posting.update(full_or_part_time: params[:full_or_part_time], job_description: params[:job_description], qualifications: params[:qualifications], company_offering: params[:company_offering])
      render json: job_posting, status: :ok
    else
      render json: { errors: job_posting.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    job_posting = JobPosting.find(params[:id])
    render json: {message: "Job Posting deleted" }, status: :ok 
  end  
end
