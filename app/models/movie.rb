class Movie < ActiveRecord::Base
  
  has_many :actors

  accepts_nested_attributes_for :actors, allow_destroy: true, reject_if: :all_blank

end