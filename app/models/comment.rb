class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :content, presence: true

  delegate :nickname, to: :user, prefix: true #-> @order.user_name
end
