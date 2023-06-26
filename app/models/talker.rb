class Talker < ApplicationRecord
  include Visible

  has_many :talks, dependent: :destroy

  validates :name, presence: true
  validates :expetise, presence: true
  validates :age, presence: true

end
