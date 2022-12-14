class Member < ApplicationRecord
  # serialize :interests, Hash

  belongs_to :user, optional: true
  validates :user, uniqueness: true, allow_blank: true

  validates :email, presence: true
  validates :email, uniqueness: true
  validates :email, format: { with: Devise.email_regexp }

  validates :nickname, presence: true
  validates :nickname, uniqueness: true
  validates :nickname, length: { minimum: 2, maximum: 20 }
end
