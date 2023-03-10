class CreateJobPostings < ActiveRecord::Migration[7.0]
  def change
    create_table :job_postings do |t|
      t.boolean :full_or_part_time
      t.string :job_description
      t.string :qualifications
      t.string :company_offering

      t.timestamps
    end
  end
end
