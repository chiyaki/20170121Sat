class LdpagesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  layout "blank", only: [:edit, :show, :update]
  def create
    @ldpage = Ldpage.new(ldpage_params)
    if @ldpage.save
      redirect_to ldpage_path(@ldpage)
    else
      render "templates/new_ldpage"
    end
  end

  def edit
    @ldpage = Ldpage.find(params[:id])
    if @ldpage.template == Template.first
      render :template01
    elsif @ldpage.template == Template.second
      render :template02
    end
  end

  def show
    @ldpage = Ldpage.find(params[:id])
    if @ldpage.template == Template.first
      render :show_template01
    elsif @ldpage.template == Template.second
      render :show_template02
    end
  end


  def update
    @ldpage = Ldpage.find(params[:id])
    if @ldpage.update(ldpage_params)
      redirect_to ldpage_path(@ldpage)
    else
      render :edit
    end
  end

  def destroy
    @ldpage = Ldpage.find(params[:id])
    @ldpage.destroy
    redirect_to account_ldpages_path
  end

  private
  def ldpage_params
    params.require(:ldpage).permit(:text01, :text02, :text03, :text04, :text05, :text06, :text07, :text08, :text09, :text10,
                                   :text11, :text12, :text13, :text14, :text15, :text16, :text17, :text18, :text19, :text20,
                                   :text21, :text22, :text23, :text24, :text25, :text26, :text27, :text28, :text29, :text30,
                                   :image01, :image02, :image03, :image04, :image05, :image06, :image07, :image08, :image09, :image10,
                                   :image11, :image12, :image13, :image14, :image15, :image16, :image17, :image18, :image19, :image20,
                                   :image21, :image22, :image23, :image24, :image25, :image26, :image27, :image28, :image29, :image30,
                                   :user_id, :template_id)
  end
end
