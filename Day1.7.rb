require "csv"


CSV.open('test1.csv', 'w') do |csv|
    csv << ["5", "5","#{5*5}"]
  
  end
table = CSV.parse(File.read("test1.csv"), headers: true)
puts table