class Blog < ApplicationRecord
  validates_presence_of :title, 
                        :body

  mount_uploader :thumb_image, AvatarUploader
  mount_uploader :main_image, AvatarUploader 
end