class Billing < ApplicationRecord
  validates :count_1, presence: true
  validates :count_2, presence: true
  validates :count_3, presence: true

  belongs_to :user
  belongs_to :project

end
