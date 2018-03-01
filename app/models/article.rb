class Article < ActiveRecord::Base
  validates :title,  presence: true, length: { minimum: 3, maximum: 50 }
  validates :description, presence: true, length: { minimum: 10, maximum: 300 }
  has_attached_file :logo, styles: {medium: '300x300>', thumb: '250x75>'}, default_url: '/images/:style/missing.png'
  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\z/

end