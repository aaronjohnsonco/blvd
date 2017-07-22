class PagesController < ApplicationController
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
