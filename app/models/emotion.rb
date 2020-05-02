class Emotion < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :emotion_choices
  belongs_to_active_hash :status_choices

  belongs_to :user
end
