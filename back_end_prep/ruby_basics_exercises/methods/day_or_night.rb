def time_of_day(light)
	light_status = nil
  light_status = (light ? "It's daytime!" : "It's nighttime!");
  puts light_status
end

daylight = [true, false].sample
time_of_day(daylight)
