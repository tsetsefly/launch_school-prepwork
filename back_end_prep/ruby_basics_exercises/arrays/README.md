# [Arrays](https://launchschool.com/exercise_sets/43b48b60)

## Question 1: New Pet

**Q:** In the code below, an array containing different types of pets is assigned to pets.

```ruby
pets = ['cat', 'dog', 'fish', 'lizard']
```

Select 'fish' from pets, assign the return value to a variable named my_pet, then print the value of my_pet.

Expected output:

```
I have a pet fish!
```

**A:**

```ruby
pets = ['cat', 'dog', 'fish', 'lizard']

my_pet = pets[2]
puts "I have a pet #{my_pet}!"
```

Array#[] is used to return the element at the specified index.

When deciding how to select a specific element from an array, it's important to first know how arrays work. Every array has its own index where each element is numbered. Counting the indexes is just like counting normally, except instead of starting at 1, you start counting at 0. Consider the following example:

```
['cat', 'dog', 'fish', 'lizard']
 0      1      2       3
```

To select a specific element, like 'fish', all we need to know is the index number that corresponds with the element. Therefore, we can simply write pets[2] to return 'fish'. All that's left to do now is save it to a variable named my_pets and print "I have a pet #{my_pet}!".

## Question 2: More Than One

**Q:** In the code below, an array containing different types of pets is assigned to pets.

```ruby
pets = ['cat', 'dog', 'fish', 'lizard']
```

Select 'fish' and 'lizard' from pets at the same time, assign the return value to a variable named my_pets, then print the value of my_pets.

Expected output:

```
I have a pet fish and a pet lizard!
```

**A:**

```ruby
pets = ['cat', 'dog', 'fish', 'lizard']

my_pets = pets[2..3]
puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"
```

Selecting a specific element from an array is fairly simple. But what about selecting more than one element at the same time? Think about how counting numbers works for a moment. Typically, you'll count from the lowest number to the highest. What about counting only certain numbers like 1 through 5?

In Ruby, this is called a range of numbers. 1..5 is the same as 1 through 5. We can apply this concept to select multiple elements from an array. Instead of just using a single number, pets[2], we can use a range of numbers to select both 'fish' and 'lizard', like this pets[2..3]. Note that when you print my_pets, you'll need to use [0] and [1] because it will be in the form of an array, not a string.

## Question 3: Free the Lizard

**Q:** In the code below, an array containing different types of pets is assigned to pets. Also, the return value of pets[2..3], which is ['fish', 'lizard'], is assigned to my_pets.

```ruby
pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3]
```

Remove 'lizard' from my_pets then print the value of my_pets.

Expected output:

```
I have a pet fish!
```

**A:**

```ruby
pets = ['cat', 'dog', 'fish', 'lizard']

pets.pop
my_pets = pets[2]
puts "I have a pet " + my_pets.to_s + "!"
```

Array#pop is used to remove and return the last element of an array.

```ruby
my_pets.pop

puts "I have a pet #{my_pets[0]}!"
```

Knowing how to modify a data structure, like an array, is crucial to using them in your programs. In our solution, we use #pop to remove the last element from pets. We're able to use this method because 'lizard' is the last element. If it wasn't, we'd have to remove it some other way.

The key thing to note here when printing my_pets is that my_pets is still an array. It looks like this: ['fish']. Just because it only has one element doesn't mean it somehow converted to a string. Arrays can contain any number of elements, even none.

## Question 4: One Isn't Enough

**Q:** Using the code below, select 'dog' from pets, add the return value to my_pets, then print the value of my_pets.

```ruby
pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3]
my_pets.pop
```

Expected output:

```
I have a pet fish and a pet dog!
```

**A:**

```ruby
pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3]
my_pets.pop

my_pets.push(pets[1])
puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"
```

In the previous exercise, we learned how to remove an element from an array. Here we do the opposite and add an element to an array using #push. When using #push, you pass in the element you want to add and it will be added to the end of the specified array. In this case, we selected 'dog' from pets and added it to my_pets.

Note that my_pets is still an array. Therefore, when we print my_pets we have to select the index of each element, 'fish' and 'dog'.

## Question 5: What Color Are You?

**Q:** In the code below, an array containing different types of colors is assigned to colors.

```ruby
colors = ['red', 'yellow', 'purple', 'green']
```

Use Array#each to iterate over colors and print each element.

Expected output:

```
I'm the color red!
I'm the color yellow!
I'm the color purple!
I'm the color green!
```

**A:**

```ruby
colors = ['red', 'yellow', 'purple', 'green']

colors.each do |x|
	puts "I'm the color #{x}!"
end
```

Iteration is a key task when it comes to Arrays. When using #each, it's important to note the block parameter: here we use color. This represents the element in the current iteration and can be named whatever you want. Knowing this, it is easy to print each element simply by using #puts.

## Question 6: Doubled

**Q:** In the code below, an array containing the numbers 1 through 5 is assigned to numbers.

```ruby
numbers = [1, 2, 3, 4, 5]
```

Use Array#map to iterate over numbers and return a new array with each number doubled. Assign the returned array to a variable named doubled_numbers and print its value using #p.

Expected output:

```
[2, 4, 6, 8, 10]
```

**A:**

```ruby
numbers = [1, 2, 3, 4, 5]

doubled_array = numbers.map { |x| x*2 }
p doubled_array
```

Using iterators is key to properly controlling data structures like arrays. In the previous exercise, we used Array#each to iterate over an array and print each element. In this exercise, we use Array#map which iterates over an array and returns a new array with each element transformed based on the block's return value. This means we can assign the return value of #map to a variable to use at a later time.

The important thing to note here is how #map decides what value to place in the new array. Looking at the solution, we can see that the only statement within the block is number * 2. Therefore, the return value of this statement will be the block's return value. As stated earlier, we know that #map uses the return value of the block as the new element's value. This means that each element in the new array is the return value of the block at each iteration.

## Question 7: Divisible by Three

**Q:** In the code below, an array containing five numbers is assigned to numbers.

```ruby
numbers = [5, 9, 21, 26, 39]
```

Use Array#select to iterate over numbers and return a new array that contains only numbers divisible by three. Assign the returned array to a variable named divisible_by_three and print its value using #p.

Expected output:

```
[9, 21, 39]
```

**A:**

```ruby
numbers = [5, 9, 21, 26, 39]

divisible_by_three = numbers.select { |x| x % 3 == 0 }
p = divisible_by_three
```

Understanding the difference between Array#map and Array#select is crucial when learning Ruby. They're very similar so it's easy to get confused. However, the main difference between #map and #select is the way the new element's value is chosen. #map returns a new array with each element transformed based on the block's return value. #select returns a new array containing elements selected only if the block's return value is true.

To demonstrate this, our solution uses a statement within the block that evaluates to true or false, nothing else. We're using the modulus operator (%) to determine the remainder of number / 3. The remainder is then compared to 0 with ==. If this statement returns true then number is divisible by 3 and number will be added to the new array. If it returns false, then #select will continue to the next iteration.

## Question 8: Favorite Number (Part 1)

**Q:** The following array contains three names and numbers. Group each name with the number following it by placing the pair in their own array. Then create a nested array containing all three groups. What does this look like? (You don't need to write any code here. Just alter the value shown so it meets the exercise requirements.)

```ruby
['Dave', 7, 'Miranda', 3, 'Jason', 11]
```

**A:**

```ruby
[['Dave', 7], ['Miranda', 3], ['Jason', 11]]
```

Arrays are useful for many reasons but one of the great things about them is their ability to hold any object. This includes other arrays. Our solution takes each name and pairs it with the appropriate number by placing each group in its own array. We do this for all three of the names and numbers, then we simply place the newly created arrays into a new array. Thus, creating a nested array.

## Question 9: Favorite Number (Part 2)

**Q:** In the code below, a nested array containing three groups of names and numbers is assigned to favorites.

```ruby
favorites = [['Dave', 7], ['Miranda', 3], ['Jason', 11]]
```

Use Array#flatten to flatten favorites so that it's no longer a nested array. Then assign the flattened array to a variable named flat_favorites and print its value using #p.

Expected output:

```
["Dave", 7, "Miranda", 3, "Jason", 11]
```

**A:**

```ruby
favorites = [['Dave', 7], ['Miranda', 3], ['Jason', 11]]

favorites = favorites.flatten
p = favorites
```

```ruby
flat_favorites = favorites.flatten

p flat_favorites
```

Using Array#flatten is pretty straightforward. It returns a new array that is a one-dimensional flattening of the original array. In our solution, we assigned the new array to flat_favorites and printed it using #p. Lets try printing favorites, the original nested array:

```ruby
flat_favorites = favorites.flatten

p flat_favorites # ["Dave", 7, "Miranda", 3, "Jason", 11]
p favorites      # [["Dave", 7], ["Miranda", 3], ["Jason", 11]]
```

That array doesn't look the same as flat_favorites. Why is that? There's actually two versions of the #flatten method. One with a bang operator (!) and one without. Let's see what happens when we use #flatten! instead of #flatten:

```ruby
flat_favorites = favorites.flatten!

p flat_favorites # ["Dave", 7, "Miranda", 3, "Jason", 11]
p favorites      # ["Dave", 7, "Miranda", 3, "Jason", 11]
```

They're both the same now. This is because #flatten! modifies the original array while #flatten only returns the modified version.

## Question 10: Are We The Same?

**Q:** In the code below, two arrays containing several numbers are assigned to two variables, array1 and array2.

```ruby
array1 = [1, 5, 9]
array2 = [1, 9, 5]
```

Compare array1 and array2 and print true or false based on whether they match.

**A:**

```ruby
puts array1 == array2
```

There's more than one way to compare arrays but perhaps the simplest way is using ==. In the solution, we use == to compare the value of array1 to the value of array2 and print the return value, which is false, with #puts.

Note that == treats two Arrays as equal if they contain the same number of elements, and each element in one Array is equal to the corresponding element in the second Array.
