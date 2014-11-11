class Person < ActiveRecord::Base

 validate :firsty
 validates :last_name, presence: true
 validate :aged

   def firsty
     if first_name.present? && first_name[0] == "K" || first_name[0] == "k"
       errors.add(:first_name, "begins with K")
     elsif first_name.blank?
       errors.add(:first_name, "Name can't be blank")
     end
   end

  def aged
      now = Time.now.utc.to_date
      if date_of_birth.present?
        oldy = now.year - date_of_birth.year
      else
        oldy = 0
      end
    if date_of_birth.blank?
      errors.add(:date_of_birth, "Date of birth can't be blank")
    elsif date_of_birth.present? && oldy >= 125
      errors.add(:date_of_birth, "Age is more than 125 years?  Please try again")
    end
  end


end
