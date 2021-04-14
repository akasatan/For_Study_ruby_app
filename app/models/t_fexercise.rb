class TFexercise < ApplicationRecord
  validates :question, presence: true
  validates :explanation, presence: true
  validates :judge, presence: true
  
  enum judge: { 〇: true, ×: false }
end
