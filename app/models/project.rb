class Project < ApplicationRecord
  with_options presence: true do
    validates :title
    validates :text
    validates :profile
    validates :target_amount
    validates :tarm
    validates :return_title_1
    validates :return_price_1
  end

  belongs_to :user
  has_many :billings

def amount_price

billings.each_with_index do |billing,index| 

@total1 = billings.sum(:count_1)
@total2 = billings.sum(:count_2)
@total3 = billings.sum(:count_3)

@index = index

end

@project = Project.find(1)

@total1*@project.return_price_1+@total2*@project.return_price_2+@total3*@project.return_price_3 
@index
end
end
