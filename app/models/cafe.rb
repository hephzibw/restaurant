class Cafe < ActiveRecord::Base
  validates :name, presence: true
end
