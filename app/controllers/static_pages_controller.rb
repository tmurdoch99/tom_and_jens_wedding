class StaticPagesController < ApplicationController
 

  def index
  if signed_in?
  @has_made_rsvp = current_user.attendings(:name).present?
  end
 end
  def venue
  if signed_in?
  @has_made_rsvp = current_user.attendings(:name).present?
  end
  end

  def getting_there
  if signed_in?
  @has_made_rsvp = current_user.attendings(:name).present?
  end
  end

  def barcelona
  if signed_in?
  @has_made_rsvp = current_user.attendings(:name).present?
  end
  end
  
   def gift
  if signed_in?
  @has_made_rsvp = current_user.attendings(:name).present?
  end
  end
end
