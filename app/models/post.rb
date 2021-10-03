class Post < ApplicationRecord
  attachment :image
  belongs_to :user
  has_many :post_comments, dependent: :destroy
  has_many :cheers, dependent: :destroy

  def cheered_by?(user)
    cheers.where(user_id: user.id).exists?
  end
end
