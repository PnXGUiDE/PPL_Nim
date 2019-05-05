type
  Animal = ref object of RootObj
    name: string

type
  Dog = ref object of Animal

method bark(this: Dog) =
  echo "woof"

type
  Cat = ref object of Animal

method meow(this: Cat) =
  echo "meow"

var dog: Animal = Dog(name: "dog")
echo dog.name
echo (dog of Animal), " ", (dog of Dog), " ", (dog of Cat)
