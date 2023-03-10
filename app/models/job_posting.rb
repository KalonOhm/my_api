class JobPosting < ApplicationRecord
  validates :full_or_part_time, :job_description, :qualifications, :company_offering, presence: true


end
