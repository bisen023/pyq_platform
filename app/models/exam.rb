class Exam < ApplicationRecord
  has_many :papers

  def self.ransackable_attributes(auth_object = nil)
    ["id", "name", "created_at", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["papers"]
  end
end