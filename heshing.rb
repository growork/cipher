require 'digest'

puts "Введите сообщение:"

message = gets.chomp

puts "Выберите способ шифрования:"
puts "1. MD5"
puts "2. SHA1"

choise = gets.chomp

a = ""

choise == "1" ? (a = Digest::MD5.hexdigest message):(a = Digest::SHA1.hexdigest message)

puts "Вот что получилось: #{a}"