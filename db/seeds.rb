# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)




require "csv"
csv_text = File.read(Rails.root.join("db", "state_data.csv"))
csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")

datax = csv.map do |row|
  data= Datum.find_or_create_by( state: row["state"],
    median_household_income: row["median_household_income"],
    share_unemployed_seasonal: row["share_unemployed_seasonal"],
    share_population_in_metro_areas: row["share_population_in_metro_areas"],
    share_population_with_high_school_degree: row["share_population_with_high_school_degree"]
  )
end    





