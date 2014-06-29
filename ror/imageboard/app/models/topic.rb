class Topic < ActiveRecord::Base
    has_many :comments
    belongs_to :board
    validates_presence_of :title, :content
    mount_uploader :file, FileUploader
end
