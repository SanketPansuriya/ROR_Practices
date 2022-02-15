require 'date'
File.open('DOB.txt').readlines.each do |f| 
  dob = Date.parse f
  date = Date.today
  age = date.year - dob.year - ((date.month < dob.month || (date.month == dob.month && date.day <= dob.day)) ? 1 : 0)
  File.write('age.txt', "You are #{age} year old")
end