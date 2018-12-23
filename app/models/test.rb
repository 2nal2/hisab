class Test < ApplicationRecord
  # Active Storage
  has_one_attached :image
  # End Active Storage

  # Type validation
  validate :correct_image_type
  # End Type validation

  # Validate file type
  def correct_image_type
    if image.attached? && !image.content_type.in?(%w(image/jpeg image/gif image/png))
      errors.add(:image, :blank, message: I18n.t("validates.image_format"))
    end
  end

  # Search
  def self.search(search, show_all)
    if search
      query = "(title LIKE :search OR description LIKE :search)"
      where(query, search: "%#{search}%")

    elsif show_all
      all

    else
      enabled
    end
  end
  # End Search

  ## Scopes
  scope :enabled, -> { where(status: true) }
  ## End Scopes

end
