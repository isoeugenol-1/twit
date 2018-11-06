class TwitsController < ApplicationController
  before_action :set_twit, only: [:show, :edit, :update, :destroy]
  def index
    @twit = Twit.all
  end
  def new
    if params[:back]
      @twit = Twit.new(twit_params)
    else
      @twit = Twit.new
    end
  end
  def create
    @twit = Twit.new(twit_params)
    if @twit.save
      redirect_to twits_path, notice: "ツイートを投稿しました"
    else
      render 'new'
    end
  end
  def edit
  end
  def destroy
    @twit.destroy
    redirect_to twits_path, notice:"ツイートを削除しました"
  end
  def update
    if @twit.update(twit_params)
      redirect_to twits_path, notice: "ツイートを編集しました"
    else
      render 'edit'
    end
  end
  def confirm
    @twit = Twit.new(twit_params)
    render :new if @twit.invalid?
  end
  private

  def twit_params
    params.require(:twit).permit(:content)
  end
  def set_twit
    @twit = Twit.find(params[:id])
  end
end
