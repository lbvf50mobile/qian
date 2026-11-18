#!/usr/bin/env ruby

# Usage: ./crqian.rb [pause_time]

# Counter Qian - it is a simple script to count numbers when I write Hanzi,
# and write a character some times. It's a part of complex system of learning
# HSK.
#

# Set time period. pause in seconds

pause = 1

pause = ARGV[0] if !ARGV.empty?

# Set Counts. As simple as possible.

counts = [
  ["零","0.mp3"],
  ["一","1.mp3"],
  ["二","2.mp3"],
  ["三","3.mp3"],
  ["四","4.mp3"],
  ["五","5.mp3"],
  ["六","6.mp3"],
  ["七","7.mp3"],
  ["八","8.mp3"],
  ["九","9.mp3"],
  ["十","10.mp3"],
]

# Count:
sound_dir = File.join(File.dirname(File.expand_path(__FILE__)), 'sound')
counts.each do |han,sound|
  file = File.join(sound_dir,sound)
  puts "#{han}"
  system("mpv #{file}", out: File::NULL, err: File::NULL)
  sleep(pause)
end
