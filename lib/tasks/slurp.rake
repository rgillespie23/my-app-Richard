namespace :slurp do
  desc "TODO"
  task stands: :environment do
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "stand_Table.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      s = Stand.new
      s.stand_id = row["Stand_ID"]
      s.stand_name = row["Stand_Name"]
      s.best_wind_id = row["Best_Wind_ID"]
      s.worst_wind_id = row["Worst_Wind_ID"]
      s.type_of_stand = row["Type_of_Stand_ID"]
      s.acreage_id = row["Acreage_ID"]
      s.save
      puts "#{s.stand_name} saved"
    end

    puts "There are now #{Stand.count} rows in the stands table"
  end

end
