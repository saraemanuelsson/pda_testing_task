### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby

class CardGame


  def checkforAce(card)
    if card.value = 1
      return true
    else
      return false
    end
  end

  # = is an assignment operator so it should be == for checking if the value is 1. I would change it to lower snake case for the method name to stick to styling conventions even though it won't actually cause an error. The method also needs to be a class method, eg CardGame.check_for_ace(card).

  dif highest_card(card1 card2)
  if card1.value > card2.value
    return card
  else
    return card2
  end
end
end

# Typo, dif should be def and there's a comma missing between the arguments. And again, it should be a class method. Also, the method should return card1 if the condition is true, not just card. The method also doesn't take into consideration what will happen if the values are the same, it will still return card2. Finally, there's an extra end at the end of this function which is closing off the CardGame class, that end should be moved underneath the self.cards_total function instead.

def self.cards_total(cards)
  total
  for card in cards
    total += card.value
    return "You have a total of" + total
  end
end

# Total should probably be a variable so it needs to be assigned a value, 0 would be appropriate here. String interpolation is also needed for the final return and the return needs to be after the end for the for loop.
```

```