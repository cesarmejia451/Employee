class Employee < ActiveRecord::Base

  def friendly_updated_at
    updated_at.strftime("%b %e, %Y")
  end

  def friendly_updated_time
    updated_at.strftime("%I:%M:%S %p")
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def japan_country_code
    cc = "+81"
    number = phone_number
    "#{cc} #{number}"
    
  end
end
