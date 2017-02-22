class AddSalaryRangeIdToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :salary_range_id, :integer
  end
end
