class Country < ApplicationRecord

  def self.search(search)
    if search
      query = "(country_name LIKE :search)"
      where(query, search: "%#{search}%")
    else
      all
    end
  end
end
