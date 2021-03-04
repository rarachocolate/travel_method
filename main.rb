require './methods.rb'

#select_planの戻り値(ハッシュ)をselected_planに代入
selected_plan = select_plan

people_num = select_people_num(selected_plan)

calculate_price(selected_plan[:price], people_num)
