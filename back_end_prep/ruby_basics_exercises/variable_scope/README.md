# [Variable Scope](https://launchschool.com/exercises/10b4a68a)

## Question 1: What's my Value? - 1

**Q:** What will the following code print and why? Don't run the code until you have tried to answer.

```ruby
a = 7

def my_value(b)
  b += 10
end

my_value(a)
puts a
```

**A:**

```7```

Assignment, including assignment operators like ```+=```, does not mutate a variable, but changes the object that variable references. Since only the reference for ```b``` is changed, no alteration is made to the value referenced by ```a```. Thus, ```a``` is still equal to 7 at the time of the puts.

Another way to look at this is that numbers in ruby are immutable. Thus, there is no way for ```my_value``` to mutate the value referenced by ```b```. Thus, ```a``` is not changed by ```my_value```.

## Question 2: What's my Value? - 2

**Q:** What will the following code print, and why? Don't run the code until you have tried to answer.

```ruby
a = 7

def my_value(a)
  a += 10
end

my_value(a)
puts a
```

**A:**

```7```

This problem is identical to the previous problem. The only thing we did is change the name b to a. Note that we can do this because methods are self-contained with respect to local variables. Variables outside the method are not visible inside the method, so the top level a is not available inside my_value. Furthermore, variables inside the method are not visible outside the method, so the a inside my_value is a local variable with no top-level visibility.

## Question 3: What's my Value? - 3

**Q:** What will the following code print, and why? Don't run the code until you have tried to answer.

**A:**

```7```

Once again, the result is 7. Once again, a inside the my_value is not visible outside my_value, and a at the top level is not visible inside my_value because methods are self-contained with respect to local variables.

## Question 4: What's my Value? - 4

**Q:** What will the following code print, and why? Don't run the code until you have tried to answer.

```ruby
a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a
```

**A:**


## Question 5

**Q:**

**A:**


## Question 6

**Q:**

**A:**

## Question 7

**Q:**

**A:**


## Question 8

**Q:**

**A:**

## Question 9

**Q:**

**A:**


## Question 10

**Q:**

**A:**






## Question 1

**Q:**

**A:**


## Question 2

**Q:**

**A:**


## Question 3

**Q:**

**A:**


## Question 4

**Q:**

**A:**


## Question 5

**Q:**

**A:**


## Question 6

**Q:**

**A:**

## Question 7

**Q:**

**A:**


## Question 8

**Q:**

**A:**

## Question 9

**Q:**

**A:**


## Question 10

**Q:**

**A:**
