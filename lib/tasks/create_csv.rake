# frozen_string_literal: true

namespace :create_csv do
  task teams_to_csv: :environment do
    csv_file = File.open('teams.csv', 'wb')
    csv_file << "Name,Abbreviation,Manager_name,Manager_Age\n"
    Team.all.each do |team|
      csv_file << team['name'] << ','
      csv_file << team['abbreviation'] << ','
      if team.manager.nil?
        csv_file << ",\n"
      else
        csv_file << team.manager['name'] << ','
        csv_file << team.manager['age'] << "\n"
      end
    end
  end
end
