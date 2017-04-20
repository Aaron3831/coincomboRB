class Fixnum
  define_method(:coin_combo) do

    # coin_combo = Hash.new()
    # coin_combo.store([self, .25], "quarters")
    # coin_combo.store([self, .10], "dimes")
    # coin_combo.store([self, .5], "nickels")
    # coin_combo.store([self, .01], "pennies")

    amount = self
    nickels = 5
    quarters = 25
    dimes = 10
    pennies = 1

quarters_count = 0
nickels_count =0
dimes_count =0
pennies_count = 0

until quarters > amount do
  quarters_count +=1
   amount = amount - quarters
end

until dimes >amount do
  dimes_count +=1
  amount = amount - dimes
end

until nickels>amount do
  nickels_count +=1
  amount = amount - nickels
end

until pennies>amount do
  pennies_count +=1
  amount = amount - pennies
end

"#{quarters_count}: quarters, #{dimes_count}: dimes #{nickels_count}:  nickels, #{pennies_count}: pennies."
end


end
