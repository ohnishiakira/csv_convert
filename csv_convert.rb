require "csv"

abort("CSV file required.") unless ARGV[0]

result = []

CSV.open(ARGV[0], "r", :headers => :first_row).each do |row|
  result << [row[0]] unless result.assoc(row[0])
  result[result.index(result.assoc(row[0]))] << row[1]
end

puts result.map(&:to_csv)
