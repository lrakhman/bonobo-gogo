class User < ActiveRecord::Base
  has_many :survey_responses
  has_many :surveys, foreign_key: :survey_creator_id

include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(username, password)
    user = User.find_by_username(username)
    return user if user && (user.password == password)
    nil # either invalid username or wrong password
  end

end
<<<<<<< HEAD

=======
>>>>>>> ff20be1a0c927d27c0dee5f1468a883aa91bb144
