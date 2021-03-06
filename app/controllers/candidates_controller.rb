class CandidatesController < ApplicationController
  before_action :set_candidate, only: [:show, :edit, :update, :destroy]

  
  def index
    @candidates = Candidate.all
  end

  
  def show
  end

  
  def new
    @candidate = Candidate.new
  end

 
  def edit
  end

  
  def create
    @candidate = Candidate.new(candidate_params)
      if @candidate.save
       puts "================================="
       puts "#{@candidate.skill_set}" 
        UserNotifierMailer.send_interview_details(@candiate)
        redirect_to(@candidate)
      else
        render :new 
      end
   
  end

  def update
    respond_to do |format|
      if @candidate.update(candidate_params)
        format.html { redirect_to @candidate, notice: 'Candidate was successfully updated.' }
        format.json { render :show, status: :ok, location: @candidate }
      else
        format.html { render :edit }
        format.json { render json: @candidate.errors, status: :unprocessable_entity }
      end
    end
  end

 
  def destroy
    @candidate.destroy
    respond_to do |format|
      format.html { redirect_to candidates_url, notice: 'Candidate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  
    def set_candidate
      @candidate = Candidate.find(params[:id])
    end

   
    def candidate_params
      params.require(:candidate).permit(:name, :email, :experience, :ctc, :expected_ctc, :mobile,:skill_set)
    end
end
