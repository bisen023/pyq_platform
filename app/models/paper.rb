class Paper < ApplicationRecord
  belongs_to :exam
  has_one_attached :pdf_file

  def self.ransackable_attributes(auth_object = nil)
    ["id", "title", "year", "exam_id", "created_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["exam"]
  end
end
