
# minute hand moves 360/60 = 6 degrees a minute
# hour hand moves 360/12/60 = 0.5 degrees a minute
# hour hand begins at 30*hour -- (360 divided by 12) times the hour]


def clock_angle(time)
    arr = time.split(":")
    hour = arr[0].to_i
    min = arr[1].to_i

    relative_angle = nil
    abs_min_angle = min*6

    if hour == 12
        abs_hour_angle = 0
    else
        abs_hour_angle = hour*30 + min*0.5
    end


    if abs_min_angle > abs_hour_angle
        relative_angle = 360 - abs_min_angle + abs_hour_angle
    elsif abs_min_angle <= abs_hour_angle
        relative_angle = abs_hour_angle - abs_min_angle
    else
        relative_angle = "I give up."
    end

    relative_angle    
end
