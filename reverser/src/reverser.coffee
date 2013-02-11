$ ->
  $("#text").focus()
  $("#text").change ->
    reversed = Reverser.reverse($(this).val())
    $("#reversed").html(reversed)
    $("#text").val("")

class window.Reverser
  @vowels: ['a', 'e', 'i', 'o', 'u']

  @reverse: (a) ->
    a = a.split("")
    new_array = []

    $.each a, ->
      char = Reverser.convert(this)
      new_array.unshift(char)

    new_array

  @convert: (char) ->
    char = char[0]
    if char.toLowerCase() in @vowels
      char = char.toUpperCase()
    else
      char = char.toLowerCase()
    char
