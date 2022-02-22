


# Create a default array of hashes that represent items at a grocery store.

@items = [
  { item: 'bananas', price: 0.49},
  { item: 'pears', price: 1.49 }
]
def welcome
  puts
  puts 'Welcome to Austen & Leo store'
  puts
  menu
end

#Display a menu in the console for the user to interact with.

def menu
  puts "1. Add item to cart"
  puts "2. View cart"
  puts "3. Remove item from cart"
  puts "4. Total"
  puts "5. Exit"
  puts
  puts "What would like to do?"
  menu_choice = gets.strip.to_i
  if menu_choice == 1
   add_item
  elsif menu_choice == 2
    view_cart
  elsif menu_choice == 3
    remove_item
  elsif menu_choice == 4
    view_total
  elsif menu_choice == 5
    puts "Thank you for shopping with us"
    exit
  else
    puts "Sorry please choose 1, 2, 3, 4, or 5"
    menu
  end
end

# Create a menu option to add items to a user's grocery cart.

def add_item
  puts
  puts 'What is the item?'
  item_input = gets.strip
  puts
  puts 'How much is the item?'
  total_input = gets.strip.to_f
  new_item = {
    item: item_input,
    price: total_input
  }
  @items << new_item
  puts
  menu
end

# Create a menu option to display all the items in the cart.

def view_cart
  puts
  puts "All Items"
  puts "----------------"
  puts
  @items.each do |item|
    item.each do |key, value|
      puts "#{key}: #{value}"
    end
  puts
  end
  puts "----------------"
  puts
 menu
end

# Create a menu option to remove an item from the users cart.

def remove_item
    puts
    puts 'What item would you like to remove?'
  gets.strip.to_i
    puts
    puts "Are you sure you want to delete this item?" 
    puts "Y/N"
    puts
    print ">"
    gets.strip == "y" ? nil : menu
    puts
    puts @items.pop
    puts
  menu
end

# Create a menu option to show the total cost of all the items in the user's cart.

def view_total
  puts
  puts 'Total cost'
  total = 0
  @items.each_with_index do |item, index|
    total += @items[index][:price]
  end
  puts "#{total} Dollars"
  puts
  menu
end
welcome