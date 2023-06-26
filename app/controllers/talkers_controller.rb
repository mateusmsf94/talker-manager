class TalkersController < ApplicationController
  def index
    @talkers = Talker.all
  end

  def show
    @talker = Talker.find(params[:id])
  end

  def new
    @talker = Talker.new
  end

  def create
    @talker = Talker.new(talker_params)

    if @talker.save
      redirect_to @talker
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @talker = Talker.find(params[:id])
  end

  def update
    @talker = Talker.find(params[:id])

    if @talker.update(talker_params)
      redirect_to @talker
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @talker = Talker.find(params[:id])
    @talker.destroy

    redirect_to root_path, status: :see_other
  end

  private

  def talker_params
    params.require(:talker).permit(:name, :age, :expetise, :status)
  end
end
