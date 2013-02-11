// Generated by CoffeeScript 1.4.0
(function() {
  var __indexOf = [].indexOf || function(item) { for (var i = 0, l = this.length; i < l; i++) { if (i in this && this[i] === item) return i; } return -1; };

  $(function() {
    $("#text").focus();
    return $("#text").change(function() {
      var reversed;
      reversed = Reverser.reverse($(this).val());
      $("#reversed").html(reversed);
      return $("#text").val("");
    });
  });

  window.Reverser = (function() {

    function Reverser() {}

    Reverser.vowels = ['a', 'e', 'i', 'o', 'u'];

    Reverser.reverse = function(a) {
      var new_array;
      a = a.split("");
      new_array = [];
      $.each(a, function() {
        var char;
        char = Reverser.convert(this);
        return new_array.unshift(char);
      });
      return new_array;
    };

    Reverser.convert = function(char) {
      char = char[0];
      if (__indexOf.call(this.vowels, char) >= 0) {
        char = char.toUpperCase();
      } else {
        char = char.toLowerCase();
      }
      return char;
    };

    return Reverser;

  })();

}).call(this);
