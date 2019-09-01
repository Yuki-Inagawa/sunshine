class Ikezaki < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :occupation, presence: true
  validates :love, presence: true
  validates :birth1, presence: true
  validates :birth2, presence: true
  validates :birth3, presence: true
  validates :grand_prix, presence: true
  validates :height, presence: true
  validates :weight, presence: true
  validates :salary, presence: true
  validates :balance, presence: true
  validates :password, presence: true
  validates :tip, presence: true
end
