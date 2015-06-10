class VotesController < ApplicationController

  def create
    @vote = Vote.new(vote_params)
    @vote.user_id = User.find_by(username: session[:username]).id
    @vote.save

    if @vote.votable_type == "Question"
      @question = Question.find(@vote.votable_id)
      @question.score = Vote.where(votable_type: "Question", votable_id: @question.id).sum(:vote_value)
      @question.save
      respond_to do |format|
        format.html { redirect_to '/' }
        format.json { render json: @question}
      end
    else
      @answer = Answer.find(@vote.votable_id)
      @answer.score = Vote.where(votable_type: "Answer", votable_id: @answer.id).sum(:vote_value)
      @answer.save
      @question = Question.find(@answer.question_id)
      respond_to do |format|
        format.html { redirect_to '/' }
        format.json { render json: @answer}
      end
    end



  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def vote_params
      params.require(:vote).permit(:vote_value, :votable_type, :votable_id)
    end
end
