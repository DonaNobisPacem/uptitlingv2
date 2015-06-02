class University < ActiveRecord::Base
	validates :university_name, presence: true, uniqueness: true
	has_many :landholdings, :dependent => :destroy
	has_many :can_edits
	has_many :users, through: :can_edits
	accepts_nested_attributes_for :landholdings, :allow_destroy => true
end
