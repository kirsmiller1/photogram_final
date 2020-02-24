class User < ApplicationRecord
  # Direct associations

  has_many   :sent_follow_requests,
             :class_name => "Follow",
             :foreign_key => "sender_id",
             :dependent => :destroy

  has_many   :received_follow_requests,
             :class_name => "Follow",
             :foreign_key => "recipient_id",
             :dependent => :destroy

  has_many   :comments,
             :foreign_key => "author_id",
             :dependent => :destroy

  has_many   :likes,
             :foreign_key => "fan_id",
             :dependent => :destroy

  has_many   :own_photos,
             :class_name => "Photo",
             :foreign_key => "owner_id",
             :dependent => :destroy

  # Indirect associations

  has_many   :receivers,
             :through => :sent_follow_requests,
             :source => :receiver

  has_many   :followers,
             :through => :received_follow_requests,
             :source => :sender

  has_many   :senders,
             :through => :received_follow_requests,
             :source => :sender

  has_many   :leaders,
             :through => :sent_follow_requests,
             :source => :receiver

  has_many   :leaders_own_photos_feed,
             :through => :leaders,
             :source => :own_photos

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
