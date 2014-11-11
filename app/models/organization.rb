class Organization < ActiveRecord::Base

  validate :revoname

  def revoname
    if name.blank?
      errors.add(:name, "Name can't be blank")
    elsif name.downcase == name.downcase.reverse
      errors.add(:name, "Palidrome business names aren't allowed!")
    end
  end

end
