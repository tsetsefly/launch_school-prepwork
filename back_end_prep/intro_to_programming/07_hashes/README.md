# [Hashes](https://launchschool.com/books/ruby/read/hashes)

## Intro

A **hash** is a data structure that stores items by associated keys. Arrays store items by an ordered index. Entries in a hash are called key-value pairs. Generally surrounded by curly braces ```{}``` and comma-separated.

Two ways to create hashes:

The old way:
```ruby
irb :001 > old_syntax_hash = {:name => 'bob'}
=> {:name=>'bob'}
```

The newer way:
```ruby
irb :002 > new_hash = {name: 'bob'}
=> {:name=>'bob'}
```