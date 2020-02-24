class Follow < ApplicationRecord
  # Direct associations

  belongs_to :sender,
             :class_name => "User"

  belongs_to :receiver,
             :class_name => "User",
             :foreign_key => "recipient_id"

  # Indirect associations

  # Validations

end
