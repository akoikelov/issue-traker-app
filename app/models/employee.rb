class Employee < ApplicationRecord
  belongs_to :user
  belongs_to :organization
  belongs_to :role, optional: true
end
