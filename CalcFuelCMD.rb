require './CalcFuel'

shipWeight = ARGV[0].tr(',', '').to_i
tripsSequence = []
launchLand = ''

ARGV[1..].each_with_index { |val,index|
    if (index.even?)
        launchLand = val.to_sym
    else
        tripSequence.push([launchLand, val.to_f])
    end
}

puts CalcRequiredFuel(shipWeight, tripsSequence)