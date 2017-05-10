class Project < ApplicationRecord

  mount_uploader :thumb_image, AvatarUploader
  mount_uploader :main_image, AvatarUploader 

  def self.by_position
    order("position ASC")
  end
end
