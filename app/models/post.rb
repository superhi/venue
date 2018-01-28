class Post < ApplicationRecord
  mount_uploader :image, PostImageUploader
end
