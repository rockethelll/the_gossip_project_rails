class Comment < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :gossip, optional: true
  has_many :likes
  has_many :children_comments, class_name: 'Comment', foreign_key: 'parent_comment_id', dependent: :destroy
  belongs_to :parent_comment, class_name: 'Comment', optional: true
end
