# File handling

## Loop over directory contents

```ruby
Dir["config.?"]                     #=> ["config.h"]
Dir.glob("config.?")                #=> ["config.h"]
Dir.glob("*.[a-z][a-z]")            #=> ["main.rb"]
Dir.glob("*.[^r]*")                 #=> ["config.h"]
Dir.glob("*.{rb,h}")                #=> ["main.rb", "config.h"]
Dir.glob("*")                       #=> ["config.h", "main.rb"]
Dir.glob("*", File::FNM_DOTMATCH)   #=> [".", "..", "config.h", "main.rb"]
```
http://ruby-doc.org/core-1.9.3/Dir.html#method-c-glob

# open file

```ruby
file = File.open(file_name, "r")
data = file.read
file.close
return data

# OR

File.open("my/file/path", "r") do |f|
    puts f
end
```