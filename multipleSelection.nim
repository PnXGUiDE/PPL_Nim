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

var someInteger: int = 5
case someInteger:
  of 0..3:      echo "Case A"
  of 4, 5, 6:   echo "Case B"
  else:         echo "n/a"
