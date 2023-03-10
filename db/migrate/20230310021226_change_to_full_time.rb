class ChangeToFullTime < ActiveRecord::Migration[7.0]
  def change
    change_column :job_postings, :full_or_part_time, :string
  end
end
