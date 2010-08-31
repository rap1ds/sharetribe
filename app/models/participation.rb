class Participation < ActiveRecord::Base
  
  belongs_to :conversation, :dependent => :destroy
  belongs_to :person, :dependent => :destroy
  has_one :testimonial
  
  def has_feedback?
    !testimonial.blank?
  end
  
  # Returns true if there is 
  def feedback_can_be_given?
    !has_feedback? && !feedback_skipped?
  end
  
end