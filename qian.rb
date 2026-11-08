#!/usr/bin/env ruby


Hash_hanzi = {
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

def make_hanzi(th, hn, dec, ones)
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
def make_pinyin(th, hn, dec, ones)
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

def get_four_num
  thousands = rand(1..9)
  hundreds = rand(1..9)
  decs = rand(1..9)
  ones = rand(1..9)
  hanzi = make_hanzi(thousands, hundreds, decs, ones)
  pinyin = make_pinyin(thousands, hundreds, decs, ones)
  number = thousands*1000+hundreds*100+decs*10+ones

  return [number, hanzi, pinyin]

end

1000.times { |x|
   num, han, pin = get_four_num
   puts "#{x+1}. #{han}"
   out = gets
   break if out.nil?
   puts pin
   puts num
   out = gets
   break if out.nil?
}

