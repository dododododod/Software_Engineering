class Regi < ActiveRecord::Base
    mount_uploader :picture, ImageUploader
    belongs_to :user
    has_many :comments, dependent: :destroy
end
