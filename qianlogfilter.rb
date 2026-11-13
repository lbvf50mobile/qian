#!/usr/bin/env ruby

STDERR.puts "Task: Find new numers to add."
STDERR.puts "Usage: ./qinlogfliter.rb dir log_file > filterlog.txt"


# command T !./% sound log.txt > finteredlog.txt


# Check the arguments.
# Generate list of existe files.
# Select lines from the log_file that are not sound dir.


# 1) Checking artuments.
raise "Must be two arguemtns." if ! 2 == ARGV.size
raise "#{ARGV[0]} must be a dir." if ! Dir.exist?(ARGV[0]) 
raise "#{ARGV[1]} must ba a lot txt file." if ! File.exist?(ARGV[1])
STDERR.puts sound_dir = ARGV[0]
STDERR.puts log_file = ARGV[1]

#2) Generate list of existed files.
existed_sounds = {}

 Dir.glob(File.join(sound_dir, '*.mp3'))
   .select { |f| File.basename(f) =~ /^\d{4}\.mp3$/ }
   .each {|f| 
     if f =~ /(\d{4}).mp3$/
       existed_sounds[$1] = true
     end
   }

 STDERR.puts existed_sounds



