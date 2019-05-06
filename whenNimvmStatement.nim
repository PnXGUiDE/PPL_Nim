# When nimvm statement

proc someProcThatMayRunInCompileTime(): bool =
  when nimvm:
    # This branch is taken at compile time.
    echo "I'm compile time!"
    result = true
  else:
    # This branch is taken in the executable.
    echo "I'm runtime!"
    result = false

# Compile time
const ctValue = someProcThatMayRunInCompileTime()

# Runtime
let rtValue = someProcThatMayRunInCompileTime()
