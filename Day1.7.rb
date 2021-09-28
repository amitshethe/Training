require "csv"
table = CSV.parse(File.read("test1.csv"), headers: true)
puts table
CSV.open('test1.csv', 'w') do |csv|
    csv << ["5", "5","25"]
  
    CSV.foreach('test1.csv') do |row|
      c1 = row[0]
      c2 = row[1]
      csv << [c1, c2, c1*c2]
    end
  end