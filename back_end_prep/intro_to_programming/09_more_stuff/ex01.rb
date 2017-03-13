def has_lab?(string)
  if string =~ /lab/
    puts string
  else
    puts "'lab' not there!"
  end
end

has_lab?("laboratory")
has_lab?("experiment")
has_lab?("Pans Labyrinth")
has_lab?("elaborate")
has_lab?("polar bear")