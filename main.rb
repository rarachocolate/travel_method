require './methods.rb'

plans = [
  { place: "沖縄", price: 10000 },
  { place: "北海道", price: 20000 },
  { place: "九州", price: 15000 }
]

show_plans(plans)

#select_planの戻り値(ハッシュ)をselected_planに代入
selected_plan = select_plan(plans)

people_num = select_people_num(selected_plan)

calculate_price(selected_plan[:price], people_num)
