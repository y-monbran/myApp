class Item < ApplicationRecord
  belongs_to :user
  # belongs_to :purchase

  # enum status: {
  #   sold: 1,
  #   nil: 2
  # }
end
