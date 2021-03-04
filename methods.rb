def select_plan
  puts <<~TEXT
       旅行プランを選択して下さい。
       1. 沖縄旅行（10000円）
       2. 北海道旅行（20000円）
       3. 九州旅行（15000円）
     TEXT

  plans = [
    { place: "沖縄", price: 10000 },
    { place: "北海道", price: 20000 },
    { place: "九州", price: 15000 }
  ]

  while true do
    print "プランの番号を選択  >  "
    plan_number = gets.to_i
    if (1..3).include?(plan_number)
      #メソッド外でplans[plan_number - 1]を使うために本メソッドの戻り値とする
      break plans[plan_number - 1]
    end
    puts "1~3の番号を入力して下さい。"
  end
end

def select_people_num(selected_plan)
  print <<~TEXT
       #{selected_plan[:place]}旅行ですね。
       何名で予約されますか？ 
     TEXT

  while true do
    print "人数を入力  >  " 
    people_num = gets.to_i
    if people_num >= 1
      puts "#{people_num}名ですね。"
      break people_num
    end
    puts "1以上を入力して下さい。"
  end
end

def calculate_price(price, num)
  total_price = price * num
  if num >= 5
    total_price = (total_price * 0.9).to_i
    puts "5名以上ですので10%割引となります"
  end
  puts "合計料金は#{total_price}円になります。"
end
