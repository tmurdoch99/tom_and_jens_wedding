class StaticPagesController < ApplicationController
 

  def index
  if signed_in?
  @has_made_rsvp = current_user.attendings(:name).present?
  end
 end
  def venue
  end

  def getting_there
  end

  def barcelona
  end
end
