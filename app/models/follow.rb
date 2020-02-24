class Follow < ApplicationRecord
  # Direct associations

  belongs_to :receiver,
             :class_name => "User",
             :foreign_key => "recipient_id"

  # Indirect associations

  # Validations

end
