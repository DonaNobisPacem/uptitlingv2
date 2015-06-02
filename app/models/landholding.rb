class Landholding < ActiveRecord::Base
  	belongs_to :university
	validates :university_id, presence: true
end
