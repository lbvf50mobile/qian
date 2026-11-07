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

def get_four_num
  thousands = rand(1..9)
  hundreds = rand(1..9)
  decs = rand(1..9)
  ones = rand(1..9)

  hanzi = Array.new(6)
  hanzi[0] = Hash_hanzi[thousands]
  hanzi[1] = Hash_hanzi[1000]
  hanzi[2] = Hash_hanzi[hundreds]
  hanzi[3] = Hash_hanzi[100]
  hanzi[4] = Hash_hanzi[decs]
  hanzi[5] = Hash_hanzi[10]
  hanzi[6] = Hash_hanzi[ones]
  hanzi = hanzi.join('')

  number = thousands*1000+hundreds*100+decs*10+ones
  return [number, hanzi]

end

10.times {
  p get_four_num
}

