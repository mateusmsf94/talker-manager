class TalksController < ApplicationController
  def create
    @talker = Talker.find(params[:talker_id])
    @talk = @talker.talks.create(talk_params)
    redirect_to talker_path(@talker)
  end

  def destroy
    @talker = Talker.find(params[:talker_id])
    @talk = @talker.talks.find(params[:id])
    @talk.destroy
    redirect_to talker_path(@talker), status: :see_other
  end

  private
  def talk_params
    params.require(:talk).permit(:subject, :time, :status)
  end
end