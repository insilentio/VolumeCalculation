# VolumeCalculation

## Small Shiny app which calculates used volume of our fermentation tanks based on the remaining free height inside the tank.

Input value to the app has to be measured from surface of liquid to the very top edge of the tank (in cm). App calculates a result in liters.

The tank is not completely cylindrical. On the one hand, there is a slight spread of the diameter values; on the other hand, the very base is not flat but rather domed. The domed part has a volume of 3.5l. These factors are considered in the algorithm, therefore simply measuring the remaining height is sufficient to yield the end result.

The calculated values have been verified by filling the tank with 50l and 100l, where the calculated values differ to max. .5l:

| Vol           | measured height | calculated height |
|---------------|-----------------|-------------------|
| 50l ( + 3.5l) | 88.8cm          | 88.7              |
| 100l (+ 3.5l) | 67.7cm          | 67.5              |

The App can be integrated in Websites via iFrame. Original lies here: https://insilentio.shinyapps.io/VolumeCalc/
