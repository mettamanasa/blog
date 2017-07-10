class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :list
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, path: "images"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  validates :title, presence: true, length: { minimum: 5 }
  validates :body, presence: true
  def self.search(search)
     where("title LIKE ?", "%#{search}%") 
  end
  def self.day  
     where("created_at >= ?", Time.now-7.days)
  end
end
