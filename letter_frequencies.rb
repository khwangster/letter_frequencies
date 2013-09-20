#!/usr/bin/env ruby

num_cases = STDIN.gets
num_cases.to_i.times do |num|
  line = STDIN.gets
  input = line.gsub!(/\s/,'')
  puts "Case ##{num+1}"

  freq = {}
  # { 'a' => 1, 'b' => 2 }
  # count how many times every letter appears
  input.chars.each do |char|
    if freq[char].nil?
      freq[char] = 1
    else
      freq[char] +=1
    end
  end

  freq_group = {}
  # {
  #   1 => [
  #     ['a',1],
  #     ['b',1]
  #   ],
  #   2 => [
  #     ['c',2],
  #     ['d',2]
  #   ]
  # }
  # group by frequency instead of by letters
  freq.each do |pair|
    if freq_group[pair[1]].nil?
      freq_group[pair[1]] = [pair]
    else
      freq_group[pair[1]] << pair
    end
  end

  freq_sorted = freq_group.sort_by { |freq,pairs| freq }.reverse
  # sort groups by frequency, descending
  # {
  #   2 => [
  #     ['d',2],
  #     ['c',2]
  #   ],
  #   1 => [
  #     ['b',1],
  #     ['a',1]
  #   ]
  # }

  freq_sorted.each do |freq, pairs|
    # sort pairs by alphabetical order
    alphabetical =  pairs.sort_by { |char, freq| char }
    alphabetical.each do |pair|
      puts "#{pair[0]} #{pair[1]}"
    end
  end
end
