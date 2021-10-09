require './CalcFuel'

shipWeight = ARGV[0].tr(',', '').to_i
tripSequence = []
ll = ''

ARGV[1..].each_with_index { |val,index|
    if (index.even?)
        ll = val.to_sym
    else
        tripSequence.push([ll, val.to_f])
    end
}

puts send('CalcRequiredFuel', shipWeight, tripSequence)