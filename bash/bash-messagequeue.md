# Create a simple messagequeue with bash

```
tail -f -n 0 ~/android.queue | xargs -r -I {} echo "test {} tset"
```
This command will watch a file (android.queue) and will not start with a history (-n 0)
and will watch for additions (-f).

Once a new line is added it will use xargs to put new data, and is not empty (-r)
it will replace {} in the command because of (-I {}).


