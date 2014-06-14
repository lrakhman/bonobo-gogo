class Choice < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :question
  has_many :question_responses, dependent: :destroy

end
