class Fixnum
  define_method(:pingpong) do
    new_array = []
    self.times() do |time|
      number = time.+(1)
      if (number.%(15)).==(0)
        new_array.push("ping-pong")
      elsif (number.%(5)).==(0)
        new_array.push("pong")
      elsif (number.%(3)).==(0)
        new_array.push("ping")
      else
        new_array.push(number)
      end
    end
    p(new_array)
    new_array
  end
end
