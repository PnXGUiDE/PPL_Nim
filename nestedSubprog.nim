proc big() =
  echo "big"

  proc small() =    # can be access from big scope
    echo "small"

  small()

big()
# small()
