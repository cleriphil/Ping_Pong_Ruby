# The Ping-Pong method counts from 1 to a given number.
# For example, we expect an input of 2 to return the array [1, 2].

# The Ping Pong method returns "ping" when a number is divisible by 3.

# The Ping Pong method returns "pong" when a number is divisible by 5.

# The Ping Pong method returns "ping-pong" when a number is divisible by 15.


require('rspec')
require('pingpong')

describe('Fixnum#pingpong') do
  it("counts from 1 to the given number") do
    expect(15.pingpong()).to(eq([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]))
  end

  it("returns 'ping' when a number is divisible by 3") do
    expect(15.pingpong()).to(eq([1, 2, "ping", 4, 5, "ping", 7, 8, 9, 10, 11, "ping", 13, 14, "ping"]))
  end

  it("returns 'pong' when a number is divisible by 5") do
    expect(15.pingpong()).to(eq([1, 2, "ping", 4, "pong", "ping", 7, 8, "ping", "pong", 11, "ping", 13, 14, "pong"]))
  end

  it("returns 'ping-pong' when a number is divisible by 15") do
    expect(15.pingpong()).to(eq([1, 2, "ping", 4, "pong", "ping", 7, 8, "ping", "pong", 11, "ping", 13, 14, "ping-pong"]))
  end
end
