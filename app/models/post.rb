class Post < ApplicationRecord
  # add in the image uploader from the uploaders folder and base it on the image field
  mount_uploader :image, PostImageUploader
end
