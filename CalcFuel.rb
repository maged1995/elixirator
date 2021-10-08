def CalcRequiredFuelForTrip(weight, gravity, launchLand)
    if launchLand == :launch
        l = 0.042
        l2 = 33
    else
        l = 0.033
        l2 = 42
    end

    reqFuel = (weight * gravity * l - l2).floor()

    unless reqFuel > 0
        return 0
    else
        return reqFuel + CalcRequiredFuelForTrip(reqFuel, gravity, launchLand)
    end
end

def CalcRequiredFuel(shipWeight, sequence)
    currentShipWeight = shipWeight
    for item in sequence.reverse
        currentShipWeight += CalcRequiredFuelForTrip(currentShipWeight, item[1], item[0])
    end
    return currentShipWeight - shipWeight
end