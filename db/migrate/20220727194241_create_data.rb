class CreateData < ActiveRecord::Migration[7.0]
  def change
    create_table :data do |t|
      t.string :state
      t.integer :median_household_income
      t.float :share_unemployed_seasonal
      t.float :share_population_in_metro_areas
      t.float :share_population_with_high_school_degree

      t.timestamps
    end
  end
end
