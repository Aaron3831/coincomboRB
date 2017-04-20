require('rspec')
require('coin_combo')

describe('Fixnum#coin_combo') do
  it("will push the correct amount of quarters with the least amount of coins") do
    expect((210).coin_combo()).to(eq("8, quarters"))
end
  describe('Fixnum#coin_combo') do
    it("will push the correct amount of dimes with the least amount of coins") do
      expect((210).coin_combo()).to(eq("1, dimes"))
end

  end
