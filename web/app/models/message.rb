class Message < ApplicationRecord
  belongs_to :user

  broadcasts_to ->(message) {'messages'}
end
