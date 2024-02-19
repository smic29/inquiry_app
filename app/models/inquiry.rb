class Inquiry < ApplicationRecord
  enum inquiry_type: { import: 0, export: 1 }

  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :inquiry_type, presence: true
end
