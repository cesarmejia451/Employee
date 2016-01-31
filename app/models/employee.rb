class Employee < ActiveRecord::Base

  belongs_to :user
  has_many :employee_groups
  has_many :groups, through: :employee_groups


  def friendly_updated_at
    updated_at.strftime("%b %e, %Y")
  end

  def friendly_updated_time
    updated_at.strftime("%I:%M:%S %p")
  end

  def full_name
    "#{first_name} #{middle_name} #{last_name}"
  end

  def japan_country_code
    if phone_number.start_with?("1")
      phone_number.sub!("1","")
    end
      phone_number.gsub!(/\D/,"")
      phone_number.insert(4,"")
    "+81 #{phone_number}"
    
  end
end
