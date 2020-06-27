class Villager < ApplicationRecord
  has_one :villager_detail

  scope :ssr_rank, -> { limit(10) }
  scope :s_rank, -> { offset(10).limit(15) }
  scope :a_rank, -> { offset(25).limit(20) }
  scope :b_rank, -> { offset(45).limit(25) }
  scope :c_rank, -> { offset(70).limit(30) }
  scope :d_rank, -> { offset(100).limit(50) }
  scope :f_rank, -> { offset(150) }
end