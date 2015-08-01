class Micropost
  include Mongoid::Document
  include Mongoid::Timestamps
  field :content, type: String

  belongs_to :user

  validates :user, presence: true
  validates :content, presence: true
end
