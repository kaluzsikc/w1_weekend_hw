def pet_shop_name(name)
   @pet_shop[:name]
end

def total_cash(sum)
  @pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, total)
  pet_shop[:admin][:total_cash] += total
end

def pets_sold(pet_shop)
  pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, total)
  pet_shop[:admin][:pets_sold] += total
end

def stock_count(pet_shop)
  pet_shop[:pets].length
end

def pets_by_breed(pet_shop, breed)
  breed_found = []
  for pet in pet_shop[:pets]
    breed_found.push(pet) if pet[:breed] == breed
  end
  return breed_found
end

def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    return pet if pet[:name] == name
  end
  return nil
end

# def remove_pet_by_name(pet_shop, pet)
#   pets = pet_shop[:pets]
#   for pet in pets
#     pets.delete_at(pets.find_index(pet))
#   end
# end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets] << new_pet
end

def customer_cash(customers)
  customers[:cash]
end

def remove_customer_cash(customers, amount)
  customers[:cash]-= amount
end

def customer_pet_count(customers)
  customers[:pets].count
end

def add_pet_to_customer(customers, new_pet)
  customers[:pets] << new_pet
end

def customer_can_afford_pet(customer, pet)
  return false if pet == 0
  pet[:price] <= customer[:cash]
end

def sell_pet_to_customer(pet_shop, pet, customer)
  pet = pet_shop[:pets]

end
