# Overriding / Polymorphism
type
  Animal = ref object of RootObj
    name: string

proc vocalize(this: Animal) =         # Static dispatch
# method vocalize(this: Animal) =     # Dynamic dispatch
  echo "vocal"

type
  Dog = ref object of Animal

proc vocalize(this: Dog) =
# method vocalize(this: Dog) =
  echo "woof"

type
  Cat = ref object of Animal

proc vocalize(this: Cat) =
# method vocalize(this: Cat) =
  echo "meow"

var dog: Dog = Dog(name: "dog")
# var dog: Animal = Dog(name: "dog")
dog.vocalize()

var cat: Cat = Cat(name: "cat")
# var cat: Animal = Cat(name: "cat")
cat.vocalize()

var snake: Animal = Animal(name: "snake")
snake.vocalize()
