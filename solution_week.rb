timetable = {
     "mon_1_open": "09:00",
     "mon_1_close": "13:00",
     "tue_1_open": "09:00",
     "tue_1_close": "13:00",
     "wed_1_open": "16:00",
     "wed_1_close": "20:00",
     "thu_1_open": "09:00",
     "thu_1_close": "13:00",
     "fri_1_open": "09:00",
     "fri_1_close": "13:00",
     "sat_1_open": "09:00",
     "sat_1_close": "14:00",
     "mon_2_open": "16:00",
     "mon_2_close": "20:00",
     "thu_2_open": "16:00",
     "thu_2_close": "20:00"
}

#надо вывести:
# Mon, Thu: 09:00-13:00, 16:00-20:00
# Wed: 16:00-20:00
# Tue, Fri: 09:00-13:00
# Sat: 09:00-14:00

tt_splitted = timetable.map{ |k, v| [k.to_s.split("_"), v]}.to_h
tt_splitted_gr = tt_splitted.group_by{ |k, _ | k.first}

t_periods = tt_splitted_gr.each do |key, value|
  value.each do |a|
    a.shift if a[0].is_a?(Array)
  end
end

res = t_periods.each {|k, v| v.flatten!}
              .group_by {|k,v| v}
              .each { |_, v| v.map!(&:first) }.invert

res1 = res.each do |k,v|
  v.each_with_index do |a, i|
    a.concat(" - ") if i.even?
  end
end

puts res1
