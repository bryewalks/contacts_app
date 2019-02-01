class Contact < ApplicationRecord
  has_many :contact_groups
  has_many :groups, through: :contact_groups

  validates :full_name, presence: true
  validates :last_name, presence: true
  validates :email, uniqueness: true


  def friendly_updated_at
    updated_at.strftime("%b %d, %Y")
  end

  def full_name
    if middle_name
      "#{first_name} #{middle_name} #{last_name}"
    else
      "#{first_name} #{last_name}"
    end

  end

  def japan_prefix_phone_number
    "+81 #{phone_number}"    
  end
end
