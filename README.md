### List all crontabs
```
$ crontab -l
```
### Crontab examples
Running a full backup every 5 minutes might be not a good approach. Here are some examples you could use:
```
# every day at 3 a.m.
0 3 * * * /bin/sh backup.sh

# every day at 3 a.m. and 4 p.m
0 3,16 * * * /bin/sh backup.sh

# every sunday at 5 a.m.
0 5 * * 0 /bin/sh backup.sh

# every sunday and friday at 3 a.m.
0 3 * * sun,fri  /bin/sh backup.sh

# every 6 hours
0 */6 * * * /bin/sh backup.sh
```

### Save log output in file
To store output in a log file:
```
*/1 * * * * /bin/sh backup.sh >>backup.log
```
