class UserLogin < ActiveRecord::Base
  include ActiveModel::Validations

  validates :email_id, presence: true
  validates :email_id, uniqueness: true

  attr_accessor :password_confirmation
  validates_confirmation_of :password

  validates :password, presence: true
  validates :salt, presence: true

  def validate
    errors.add_to_base("Missing Password") if password.blank?
  end

  def self.authenticate(email, password)
    userlogin = self.find_by_email(email)
    if userlogin
      expected_password = encrypted_password(password, user.salt)
      if userlogin.hashed_password != expected_password
        userlogin = nil
      end
    end
  end

  # 'password' is a virtual attribute
  def password
    @password
  end

  def password=(pwd)
    @password = pwd
    return if pwd.blank?
    create_new_salt
    self.hashed_password = UserLogin.encrypted_password(self.password, self.salt)
  end

  private

  def self.encrypted_password(password, salt)
    string_to_hash = password + "india" + salt
    Digest::SHA1.hexdigest(string_to_hash)
  end

  def create_new_salt
    self.salt = self.object_id.to_s + rand.to_s
  end

  protected

  def set_default
    self.user_verified = 0
    self.created_at = Time.now
    self.updated_at = Time.now
  end
end
