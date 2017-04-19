require('rspec')
require('./lib/beats')

describe('String#rock_paper_scissors') do
  it("returns true if rock is the object and scissors is the argument") do
    expect("rock".beats?("scissors")).to(eq(true))
  end
  it("returns true if scissors is the object and paper is the argument") do
    expect("scissors".beats?("paper")).to(eq(true))
  end
  it("returns true if paper is the object and rock is the argument") do
    expect("paper".beats?("rock")).to(eq(true))
  end
  it("returns nil if the object and argument are the same") do
    expect("paper".beats?("paper")).to(eq(nil))
  end
  it("returns false if the argument beats the object") do
    expect("rock".beats?("paper")).to(eq(false))
  end
end
