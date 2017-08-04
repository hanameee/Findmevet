require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'vet_0803.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'UTF-8')
csv.each do |row|
  t = Vet.new
  t.vtitle = row['vtitle']
  t.address = row['address']
  t.telephone = row['telephone']
  t.description = row['description']
  t.hour = row['hour']
  t.hotel = row['hotel']
  t.beauty = row['beauty']
  t.supply = row['supply']
  t.homepage = row['homepage']
  t.save
end