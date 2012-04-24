class StaticPagesController < ApplicationController
  skip_before_filter :authorize
  
  def questions
  end

  def news
  end

  def contacts
  end
end
