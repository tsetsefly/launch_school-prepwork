# [Files](https://launchschool.com/books/ruby/read/files)

## Creating a file

```ruby
irb :001 > my_file = File.new("simple_file.txt", "w+")
=> #<File:simple_file.txt>
irb :002 > my_file.close
```

You always want to close files to reduce unneeded memory usage. Ruby will automatically close a file if its ```open``` method is within a block.

## Opening files

Use ```File.open``` to open an existing file.

* ```r```: read-only (starts at the beginning of the file)
* ```w```: write-only (if the file exists, **overwrites** everything in the file)
* ```w+```: read and write: (if the file exists, **overwrites** everything in the file)
* ```a+```: read-write (if the file exists, starts at the end of file. Otherwise creates a new file... good for updating files)

### Opening file for reading

* ```File.read("file_name")```: reads out entire content of the file.
* ```File.readlines("file_name")```: reads the entire file based on individual lines and returns those lines in an array.

### Opening file for writing

```ruby
irb :001 >  sample = File.open("simple_file.txt",  "w+")
 => #<File:simple_file.txt>
irb :002 > sample.puts("another example of writing to a file.")
 => nil
irb :003 > sample.close
 => nil
irb :004 > File.read("simple_file.txt")
 => "another example of writing to a file.\n"
```

```ruby
irb :005 > File.open("simple_file.txt", "a+") do |file|
irb :006 >     file << "Here we are with a new line of text"
irb :007 > end
 => #<File:simple_file.txt (closed)>
irb :008 > File.readlines("simple_file.txt").each do |line|
irb :009 >     puts line
irb :010 > end
another example of writing to a file.
Here we are with a new line of text
 => ["another example of writing to a file.\n", "Here we are with a new line of text"]
```

```ruby
irb :001 > File.open("simple_file.txt",  "a+") do |file|
irb :002 >       file.write "Writing to files in Ruby is simple."
irb :003 >   end
 => 35
irb :004 >
irb :005 >   File.readlines("simple_file.txt").each_with_index do |line, line_num|
irb :006 >       puts "#{line_num}: #{line}"
irb :007 >   end
0: another example of writing to a file.
1: Here we are with a new line of textWriting to files in Ruby is simple.
 => ["another example of writing to a file.\n", "Here we are with a new line of textWriting to files in Ruby is simple."]
```

## Deleting a file

Delete files with ```File.delete```

```ruby
irb :001 > File.new("dummy_file.txt", "w+")
 => #<File:dummy_file.txt>
irb :002 > File.delete("dummy_file.txt")
 => 1
```

## File classes

File handling comes down to:

* The **right stuff* being...
* in the **right kind of files**...
* in the **right place.

### The right stuff

Important concepts are creating, opening, deleting files.

### The right kind of files

Comes down to **file formats** and **extensions**.

### The right place

Comes down to a recognizable **directory structure** or **Path**

### ```IO``` and ```File``` related classes

The ```File```'s superclass is ```IO```

```ruby
irb :001 > File.superclass
=> IO
irb :002 > $stdout
 => #<IO:<STDOUT>>
irb :003 > $stderr
 => #<IO:<STDERR>>
irb :004 > $stdin
 => #<IO:<STDIN>>
```

The major ```IO``` streams: ```STDOUT```, ```STDIN```, ```STDERR```.

When we talk about files, we refer to them in the context of their place in the file structure.

* ```Dir```: class shares some of File's methods. However, it is not an IO stream.
* ```Pathname```: class exposes all of the methods for Dir and ```File```

Finding the extension name via the ```File::extname``` method:
```ruby
irb :001 > require 'pathname'
 => true
irb :002 > f = File.new("simple_file.txt", "r")
 => #<File:simple_file.txt>
irb :003 > pn = Pathname.new(f)
 => #<Pathname:simple_file.txt>
irb :004> pn.extname
 => ".txt"
irb :005 > File.extname("simple_file.txt")
 => ".txt"
```

## Exercise 2

```ruby
irb :001 > d = Dir.new(".")
 => #<Dir:.>
irb :02 > while file = d.read do
irb :03 >     puts "#{file} has extension .txt" if File.extname(file) == ".txt"
irb :04?>   end
simple_file.txt has extension .txt
original_file.txt has extension .txt
 => nil
```

```ruby
irb :001 > require 'pathname'
 => true
irb :002 > pn = Pathname.new(".")
irb :003 > pn.entries.each { |f| puts "#{f} has extension .txt" if f.extname == ".txt" }
simple_file.txt has extension .txt
original_file.txt has extension .txt
 => [#<Pathname:simple_file.txt>, #<Pathname:cultures.json>, #<Pathname:ruby_book>, #<Pathname:articles.xml>, #<Pathname:chair.rb>, #<Pathname:.git>, #<Pathname:original_file.txt>, #<Pathname:feedzilla.json>, #<Pathname:slashdot>, #<Pathname:articles.json>, #<Pathname:..>, #<Pathname:.>]
```

## Working with file formats - CSV, Excel, JSON, XML

### CSV and XLS / XLSX

"Data that fits in a box."

### JSON and XML / HTML

* JSON: allows you describe nested characteristics of plain-text data.
* XML: allows you to define domain specific schematics.

## Exercise 3