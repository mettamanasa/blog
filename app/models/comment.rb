class Comment < ApplicationRecord
  validates :name, presence: true,
                    length: { minimum: 5 }
  belongs_to :post
  has_attached_file :profile_pic, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :profile_pic, content_type: /\Aimage\/.*\z/
end
