# Case statement
var someGreeting: string = "Hello"

case someGreeting:
  of "Hi":
    echo "Hi there!"
  of "Hello":
    echo "Hello there!"
  else:
    echo "Thank you!"


# No indentation used version
case someGreeting
of "Hi":        echo "Hi there!"
of "Hello":     echo "Hello there!"
else:           echo "Thank you!"


var someInteger: int = 10
case someInteger:
  of 0..3:      echo "Case A"
  of 4, 5, 6:   echo "Case B"
  else:         echo "n/a"

import strutils   # import endsWith

var animal = "white whale"
var favoriteFood = case animal
  of "dog": "bones"
  of "cat": "mice"
  elif animal.endsWith "whale": "plankton"
  else:
    echo "I'm not sure what to serve, but everybody loves ice cream"
    "ice cream"

echo favoriteFood
