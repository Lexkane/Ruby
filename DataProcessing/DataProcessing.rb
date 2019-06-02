require 'csv'

CSV.foreach("employees.csv", quote_char: '"', col_sep: ',', row_sep: :auto, headers: true) do |row|
  puts row[1]
  #puts row['xxx']
end