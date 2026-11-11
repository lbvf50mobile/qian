#!/usr/bin/env ruby


Hash_hanzi = {
 0 => "零", #(líng) 
 1 => "一", #(yī) 
 2 => "二", #(èr)
 3 => "三", #(sān)
 4 => "四", #(sì)
 5 => "五", #(wǔ)
 6 => "六", #(liù)
 7 => "七", #(qī) 
 8 => "八", #(bā)
 9 => "九", #(jiǔ)
 10 => "十", #(shí)
 100 => "百", #(bǎi)
 1000 => "千", #(qiān)
}
Hash_pinyin = {
 0 => "líng", 
 1 => "yī", 
 2 => "èr",
 3 => "sān",
 4 => "sì",
 5 => "wǔ",
 6 => "liù",
 7 => "qī" ,
 8 => "bā",
 9 => "jiǔ",
 10 => "shí",
 100 => "bǎi",
 1000 => "qiān",
}

#################################################
# Full Hanzi
def full_h(th, hn, dec, ones)
  hanzi = Array.new(7)
  hanzi[0] = Hash_hanzi[th]
  hanzi[1] = Hash_hanzi[1000]
  hanzi[2] = Hash_hanzi[hn]
  hanzi[3] = Hash_hanzi[100]
  hanzi[4] = Hash_hanzi[dec]
  hanzi[5] = Hash_hanzi[10]
  hanzi[6] = Hash_hanzi[ones]
  hanzi = hanzi.join('')
  return hanzi
end
# Full PinYin
def full_p(th, hn, dec, ones)
  pinyin = Array.new(7)
  pinyin[0] = Hash_pinyin[th]
  pinyin[1] = Hash_pinyin[1000]
  part_th = pinyin[0]+pinyin[1]

  pinyin[2] = Hash_pinyin[hn]
  pinyin[3] = Hash_pinyin[100]
  part_hn = pinyin[2]+pinyin[3]

  pinyin[4] = Hash_pinyin[dec]
  pinyin[5] = Hash_pinyin[10]
  part_dc = pinyin[4]+pinyin[5]

  pinyin[6] = Hash_pinyin[ones]
  return part_th+" "+part_hn+" "+part_dc+" "+pinyin[6]
end
def get_full
  thousands = rand(1..9)
  hundreds = rand(1..9)
  decs = rand(1..9)
  ones = rand(1..9)
  hanzi = full_h(thousands, hundreds, decs, ones)
  pinyin = full_p(thousands, hundreds, decs, ones)
  number = thousands*1000+hundreds*100+decs*10+ones
  return [number, hanzi, pinyin]
end
#################################################
#################################################
# Twogap Hanzi
def twogap_h(th, hn, dec, ones)
  hanzi = Array.new(7)
  hanzi[0] = Hash_hanzi[th]
  hanzi[1] = Hash_hanzi[1000]
  hanzi[2] = "" 
  hanzi[3] = Hash_hanzi[0]
  hanzi[4] = ""
  hanzi[5] = "" 
  hanzi[6] = Hash_hanzi[ones]
  hanzi = hanzi.join('')
  return hanzi
end
# Twogap PinYin
def twogap_p(th, hn, dec, ones)
  pinyin = Array.new
  pinyin[0] = Hash_pinyin[th]
  pinyin[1] = Hash_pinyin[1000]
  part_th = pinyin[0]+pinyin[1]
  part_hn = Hash_pinyin[0]
  part_dc = "" 
  pinyin[3] = Hash_pinyin[ones]
  return part_th+" "+part_hn+" "+part_dc+" "+pinyin[3]
end
def get_twogap
  thousands = rand(1..9)
  hundreds = 0
  decs = 0
  ones = rand(1..9)
  hanzi = twogap_h(thousands, hundreds, decs, ones)
  pinyin = twogap_p(thousands, hundreds, decs, ones)
  number = thousands*1000+hundreds*100+decs*10+ones
  return [number, hanzi, pinyin]
end
#################################################
#################################################
# Baigap Hanzi
def baigap_h(th, hn, dec, ones)
  hanzi = Array.new(7)
  hanzi[0] = Hash_hanzi[th]
  hanzi[1] = Hash_hanzi[1000]
  hanzi[2] = "" 
  hanzi[3] = Hash_hanzi[0]
  hanzi[4] = Hash_hanzi[dec]
  hanzi[5] = Hash_hanzi[10]
  hanzi[6] = Hash_hanzi[ones]
  hanzi = hanzi.join('')
  return hanzi
end
# Baigap PinYin
def baigap_p(th, hn, dec, ones)
  pinyin = Array.new(7)
  pinyin[0] = Hash_pinyin[th]
  pinyin[1] = Hash_pinyin[1000]
  part_th = pinyin[0]+pinyin[1]

  pinyin[2] = "" 
  pinyin[3] = Hash_pinyin[0]
  part_hn = pinyin[2]+pinyin[3]

  pinyin[4] = Hash_pinyin[dec]
  pinyin[5] = Hash_pinyin[10]
  part_dc = pinyin[4]+pinyin[5]

  pinyin[6] = Hash_pinyin[ones]
  return part_th+" "+part_hn+" "+part_dc+" "+pinyin[6]
end
def get_baigap
  thousands = rand(1..9)
  hundreds = 0
  decs = rand(1..9)
  ones = rand(1..9)
  hanzi = baigap_h(thousands, hundreds, decs, ones)
  pinyin = baigap_p(thousands, hundreds, decs, ones)
  number = thousands*1000+hundreds*100+decs*10+ones
  return [number, hanzi, pinyin]
end
#################################################
#################################################
# Shigap Hanzi
def shigap_h(th, hn, dec, ones)
  hanzi = Array.new(7)
  hanzi[0] = Hash_hanzi[th]
  hanzi[1] = Hash_hanzi[1000]
  hanzi[2] = Hash_hanzi[hn]
  hanzi[3] = Hash_hanzi[100]
  hanzi[4] = "" 
  hanzi[5] = Hash_hanzi[0]
  hanzi[6] = Hash_hanzi[ones]
  hanzi = hanzi.join('')
  return hanzi
end
# Shi PinYin
def shigap_p(th, hn, dec, ones)
  pinyin = Array.new(7)
  pinyin[0] = Hash_pinyin[th]
  pinyin[1] = Hash_pinyin[1000]
  part_th = pinyin[0]+pinyin[1]

  pinyin[2] = Hash_pinyin[hn]
  pinyin[3] = Hash_pinyin[100]
  part_hn = pinyin[2]+pinyin[3]

  pinyin[4] = "" 
  pinyin[5] = Hash_pinyin[0]
  part_dc = pinyin[4]+pinyin[5]

  pinyin[6] = Hash_pinyin[ones]
  return part_th+" "+part_hn+" "+part_dc+" "+pinyin[6]
end
def get_shigap
  thousands = rand(1..9)
  hundreds = rand(1..9)
  decs = 0 
  ones = rand(1..9)
  hanzi = shigap_h(thousands, hundreds, decs, ones)
  pinyin = shigap_p(thousands, hundreds, decs, ones)
  number = thousands*1000+hundreds*100+decs*10+ones
  return [number, hanzi, pinyin]
end
#################################################
def get_four_num
  # 1 full 1352
  # 2 twogaps 2002
  # 3 baigap 1031
  # 4 shigap 1401
  type = rand(1..4) 
  if 1 == type
    return get_full
  elsif 2 == type
    return get_twogap
  elsif 3 == type
    return get_baigap
  elsif 4 == type
    return get_shigap
  else
    return get_full
  end
end
# Get categorized list of sound files from 'sound' directory
# relative to the script location.
# Returns array of [filepath, category, [thousands, hundreds, tens, ones]] triples.
# Categories:
#   'full'     - no zeros (e.g., 1234)
#   'twogaps'  - two consecutive zeros (e.g., 1002)
#   'baigap'   - zero in hundreds place (e.g., 1023)
#   'shigap'   - zero in tens place (e.g., 1203)
def get_sound_names
  sound_dir = File.join(File.dirname(File.expand_path(__FILE__)), 'sound')
  return [] unless Dir.exist?(sound_dir)

  Dir.glob(File.join(sound_dir, '*.mp3'))
    .select { |f| File.basename(f) =~ /^\d{4}\.mp3$/ }
    .map do |f|
      digits = File.basename(f, '.mp3')
      category = case digits
                 when /^[^0]{4}$/       then 'full'
                 when /^[^0]0{2}[^0]$/  then 'twogaps'
                 when /^[^0]0[^0]{2}$/  then 'baigap'
                 when /^[^0]{2}0[^0]$/  then 'shigap'
                 else 'other'
                 end
      # Split digits into array of integers [thousands, hundreds, tens, ones]
      digit_array = digits.chars.map(&:to_i)
      [f, category, digit_array]
    end
end

def decode_num(category, digit_array)
  num = digit_array.join("").to_i
  han, pin = "", ""
  if "full" == category
    han = full_h(*digit_array)
    pin = full_p(*digit_array)
  elsif "twogaps" == category
    han = twogap_h(*digit_array)
    pin = twogap_p(*digit_array)
  elsif "baigap" == category
    han = baigap_h(*digit_array)
    pin = baigap_p(*digit_array)
  elsif "shigap" == category
    han = shigap_h(*digit_array)
    pin = shigap_p(*digit_array)
  else
    raise "Unknown category #{category}."
  end
  return [num, han, pin]
end
def prepare_dir_sounds_arr()
  data = get_sound_names
  data = data.map{|x| decode_num(*x[-2..-1])+[x[0]]}
  return data
end

def log(str)
  file_name = File.dirname(File.expand_path(__FILE__)) + "/log.txt"
  File.write(file_name, str+"\n", mode: "a")
end
def generate(x)
     num, han, pin = get_four_num
     puts "#{x+1}. #{han}"
     out = gets
     return false if out.nil?
     puts pin
     puts num
     log("#{x+1}. #{han} #{pin} #{num}")
     out = gets
     return false if out.nil?
     return true
end


if ARGV.empty?
  puts "Usage: -h for help."
  timestamp = Time.now.strftime("%Y-%m-%d %a %H:%M")
  log("# " + timestamp)
  1000.times { |x|
    type = rand(1..2)
    if 1 == type 
      break if !generate(x)
    elsif 2 == type
      break if !generate(x)
    end
  }
elsif "-t" == ARGV[0]
  # command T !./% -t
  # mpv 1003.mp3 > /dev/null 2>&1
  data = prepare_dir_sounds_arr()
  data.each do |x|
    p x
  end

  1.times { |x|
     num, han, pin = get_four_num
     puts "#{x+1}. #{han}"
     puts pin
     puts num
  }
elsif "-h" == ARGV[0]
  puts "Keys for qian:"
  puts "Usage: -h for help."
  puts "Usage: -t for text output."
end
