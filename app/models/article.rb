class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  # validates :title, uniqueness: true, presence: true
  validates_format_of :text, {:with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: "must be in valid format"}
  # validates_with EmailValidator
  # validates_each :title, :text do |record, attr, value|
  #   record.errors.add(attr, 'must start with upper case') if value =~ /\A[[:lower:]]/
  # end
end
