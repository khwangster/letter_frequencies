#!/usr/bin/env ruby

num_cases = STDIN.gets
num_cases.to_i.times do |num|
  line = STDIN.gets
  input = line.split(' ')
  puts "Case ##{num+1}"
  puts input[0].to_i + input[1].to_i
end
