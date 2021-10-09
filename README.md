# Elixirator Backend Test Task: Calculate Fuel

These functions are written in Ruby (3.0.0).
Currently, In order to use this Calculation, the machine must have Ruby (>= 3.0.0) installed.

Three types of parameters that are passed to the calculation function:

- ship_weight
- trip_type
- planet_gravity

There are only **two** types of `trip_type`: **`launch`** and **`land`**

## To Use the Calculation Method itself:
### Template:
```
require 'path/to/CalcFuel'

result = CalcRequiredFuel(<ship_weight>, [[<trip_type>, <planet_gravity>]])
```

### Exmaple (when at the same directory):
```
require './CalcFuel'

result = CalcRequiredFuel(28801, [[:launch, 9.807], [:land, 1.62], [:launch, 1.62], [:land, 9.807]])
```

-------

## To get the results directly from Command-line:
### Template:
`ruby path/to/CalcFuelCMD.rb <ship_weight> [<trip_type>, <planet_gravity>]`

### Exmaple (when at the same directory):
`ruby CalcFuelCMD.rb 28801 launch 9.807 land 1.62 launch 1.62 land 9.807`
