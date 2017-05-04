class Album < ApplicationRecord
  validates_presence_of :title, 
                        :thumb_image

  has_many :images
end