class User < ApplicationRecord
  # VALID_EMAIL_REGEX = Settings.user.email_regex

  validates :name, :address,
            presence: true
            # length: {maximum: Settings.user.name.max_length}

  # validates :email, presence: true,
            # length: {maximum: Settings.user.email.max_length},
            # format: {with: VALID_EMAIL_REGEX},
            # uniqueness: {case_sensitive: false}
end
