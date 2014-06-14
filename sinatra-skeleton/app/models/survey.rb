class Survey < ActiveRecord::Base
  has_many :questions, dependent: :destroy
  belongs_to :survey_creator, class_name: "User"
  has_many :survey_responses, dependent: :destroy
  has_many :survey_takers, through: :survey_responses

end
