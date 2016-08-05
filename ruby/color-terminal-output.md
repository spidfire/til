# Color the output to the terminal

```
class String
  # colorization
  def colorize(color_code)
    "\e[#{color_code}m#{self}\e[0m"
  end

  def red
    colorize(31)
  end

  def green
    colorize(32)
  end

  def yellow
    colorize(33)
  end

  def blue
    colorize(34)
  end

  def pink
    colorize(35)
  end

  def light_blue
    colorize(36)
  end
end

```


# Other options

```
\e[1m    <-  Bold
\e[2m    <-  Dim
\e[4m    <-  Underlined
\e[5m    <-  Blink
\e[7m    <-  inverted
\e[8m    <-  Hidden

\e[0m    <-  Reset everything
\e[21m   <-  Reset Bold
\e[22m   <-  Reset Dim
\e[24m   <-  Reset Underlined
\e[25m   <-  Reset Blink
\e[27m   <-  Reset inverted
\e[28m   <-  Reset Hidden


\e[39m   <-  Default
\e[30m   <-  Black
\e[31m   <-  Red
\e[32m   <-  Green
\e[33m   <-  Yellow
\e[34m   <-  Blue
\e[35m   <-  Magenta
\e[36m   <-  Cyan
\e[37m   <-  Light gray
\e[90m   <-  Dark gray
\e[91m   <-  Light red
\e[92m   <-  Light green
\e[93m   <-  Light yellow
\e[94m   <-  Light blue
\e[95m   <-  Light magenta
\e[96m   <-  Light cyan
\e[97m   <-  White
\e[49m   <-  Default
\e[40m   <-  Black
\e[41m   <-  Red
\e[42m   <-  Green
\e[43m   <-  Yellow
\e[44m   <-  Blue
\e[45m   <-  Magenta
\e[46m   <-  Cyan
\e[47m   <-  Light gray
\e[100m  <-  Dark gray
\e[101m  <-  Light red
\e[102m  <-  Light green
\e[103m  <-  Light yellow
\e[104m  <-  Light blue
\e[105m  <-  Light magenta
\e[106m  <-  Light cyan
\e[107m  <-  White
```