class Question < ActiveRecord::Base
  # Remember to create a migration!
  has_many :choices, dependent: :destroy
  belongs_to :survey
  has_one :survey_creator, through: :survey
  has_many :question_responses, through: :choices
end
