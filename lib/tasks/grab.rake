namespace :grab do
  desc "TODO"
  task food_sources: :environment do
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "Food_Source_Table.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    puts csv
    csv.each do |row|
      f = Foodsource.new
      f.food_source_id = row["Food_Source_ID"]
      f.stand_id = row["Stand_ID"]
      f.crop_id = row["Crop_ID"]
      f.save
      puts "#{f.food_source_id} saved"
    end
      puts "There are now #{Foodsource.count} rows in the foodsources table"
  end

end
