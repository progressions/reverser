describe "Reverser", ->
  it "reverses a string", ->
    string = "Hello"
    expect(Reverser.reverse(string)).toEqual([ 'O', 'l', 'l', 'E', 'h' ])

  it "capitalizes vowels", ->
    string = "aeiou"
    expect(Reverser.reverse(string)).toEqual([ 'U', 'O', 'I', 'E', 'A' ])

  it "lowercases consonants", ->
    string = "BCDFGHJKLMNPQRSTVWXYZ"
    expect(Reverser.reverse(string)).toEqual([ 'z', 'y', 'x', 'w', 'v', 't', 's', 'r', 'q', 'p', 'n', 'm', 'l', 'k', 'j', 'h', 'g', 'f', 'd', 'c', 'b' ])

  it "reverses non-letters", ->
    string = "123 456"
    expect(Reverser.reverse(string)).toEqual([ '6', '5', '4', ' ', '3', '2', '1' ])
