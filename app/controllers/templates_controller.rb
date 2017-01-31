class TemplatesController < ApplicationController
  before_action :authenticate_user!
  layout "blank", only: [:new_ldpage]

  def index
    @templates = Template.all
  end

  def new_ldpage
    @template = Template.find(params[:id])
    @ldpage = Ldpage.new
    @ldpage.user = current_user
    @ldpage.template = @template
    @ldpage.save!
    if @ldpage.template == Template.first
      render "ldpages/template01"
    elsif @ldpage.template == Template.second
      render "ldpages/template02"
    end
  end

end
