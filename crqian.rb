#!/usr/bin/env ruby

# Usage: ./crqian.rb [pause_time]
# Usage: ./crqian.rb [sound_file hanzi_char pause_time]

# Counter Qian - it is a simple script to count numbers when I write Hanzi,
# and write a character some times. It's a part of complex system of learning
# HSK.
#

# Set time period. pause in seconds

pause = 1
format = 1
path = ""
hanzi_repeat = "~"

if ARGV.empty? || 1 == ARGV.size

  pause = ARGV[0].to_i if !ARGV.empty?

elsif 2 <= ARGV.size 
  format = 2
  path = ARGV[0] # Sound file;
  hanzi_repeat = ARGV[1] # Hanzi Char;
  pause = ARGV[2].to_i # Pause in seconds;
end

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
  ["十一","11.mp3"],
  ["十二","12.mp3"],
  ["十三","13.mp3"],
  ["十四","14.mp3"],
  ["十五","15.mp3"],
  ["十六","16.mp3"],
  ["十七","17.mp3"],
  ["十八","18.mp3"],
  ["十九","19.mp3"],
  ["二十","20.mp3"],
]

# Count:
 
if 1 == format
  sound_dir = File.join(File.dirname(File.expand_path(__FILE__)), 'sound')
  counts.each do |han,sound|
    file = File.join(sound_dir,sound)
    puts "#{han}"
    system("mpv #{file}", out: File::NULL, err: File::NULL)
    sleep(pause)
  end
end

if 2 == format
  sound_dir = File.join(File.dirname(File.expand_path(__FILE__)), 'sound')
  raise "#{path} does not exts" if ! File.exist?(path)
  counts.each do |han,sound|
    file = File.join(sound_dir,sound)
    puts "#{han} #{hanzi_repeat}"
    system("mpv #{file}", out: File::NULL, err: File::NULL)
    sleep(1)
    system("mpv #{path}", out: File::NULL, err: File::NULL)
    sleep(pause)
  end
end
