class QuestionResponse < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :choice
  belongs_to :survey_response

end
