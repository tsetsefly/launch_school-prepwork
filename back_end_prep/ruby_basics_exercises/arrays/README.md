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




## Question 4: One Isn't Enough

**Q:**

**A:**


## Question 5: What Color Are You?

**Q:**

**A:**


## Question 6: Doubled

**Q:**

**A:**

## Question 7: Divisible by Three

**Q:**

**A:**


## Question 8: Favorite Number (Part 1)

**Q:**

**A:**

## Question 9: Favorite Number (Part 2)

**Q:**

**A:**


## Question 10: Are We The Same?

**Q:**

**A:**
