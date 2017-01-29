class TemplatesController < ApplicationController
  def index
    @templates = Template.all
  end

  def use_this_template
    @ldpage = Ldpage.find(params[:id])
    @template = Template.find(params[:id])
    @ldpage.template = @template
    @ldpage.save
  end
  #
  # def use_this_template
  #   @ldpage = Ldpage.new(ldpage_params)
  #   if @ldpage.save
  #     redirect_to edit_ldpage_path(@ldpage)
  #   else
  #     render :new
  #   end
  # end
end
