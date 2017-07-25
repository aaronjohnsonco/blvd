class PagesController < ApplicationController

  before_action do
    @communities = Community.order(:sort).all
  end

  def home
    @contact = Contact.new
  end

  def available
  end

  def detail
  end

  def contact
    @contact = Contact.new
  end

  def about
  end

  def communities
  end

  def warranty
    @contact = Contact.new
  end

end
