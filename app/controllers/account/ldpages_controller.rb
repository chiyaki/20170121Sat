class Account::LdpagesController < ApplicationController
  before_action :authenticate_user!
  def index
    @ldpages = current_user.ldpages.recent
  end
end
