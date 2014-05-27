class Ebook < ActiveRecord::Base
  attr_accessible :tag_list, :cover, :author, :price, :title
  belongs_to :seller
  has_attached_file :cover, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :cover, :content_type => ['image/jpeg', 'image/png', 'image/jpg']#
  validates_attachment_presence :cover
  validates_attachment_size :cover, :less_than => 5.megabytes
  acts_as_taggable
end
