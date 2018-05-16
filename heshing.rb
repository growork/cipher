require 'digest'

puts 'Введите сообщение:'

message = gets.chomp

puts 'Выберите способ шифрования:'
puts '1. MD5'
puts '2. SHA1'
puts '3. SHA2'

choise = gets.to_i

a = ""

case choise
when 1
  puts "Вот что получилось: #{Digest::MD5.hexdigest message}"
when 2
  puts "Вот что получилось: #{Digest::SHA1.hexdigest message}"
when 3
  puts "Вот что получилось: #{Digest::SHA2.hexdigest message}"
else
  puts 'Введены неверные данные!'
end
