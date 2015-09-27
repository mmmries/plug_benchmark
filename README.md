Plug Benchmark
==============

A little test app to benchmark plug performance.

You can start the server  with `mix server` and then run a basic apache benchmark of 5,000 requests (concurrency of 8) with `./benchmark.sh`.

The results will be something like:

```
This is ApacheBench, Version 2.3 <$Revision: 1663405 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking 127.0.0.1 (be patient)
Completed 500 requests
Completed 1000 requests
Completed 1500 requests
Completed 2000 requests
Completed 2500 requests
Completed 3000 requests
Completed 3500 requests
Completed 4000 requests
Completed 4500 requests
Completed 5000 requests
Finished 5000 requests


Server Software:
Server Hostname:        127.0.0.1
Server Port:            4000

Document Path:          /
Document Length:        16 bytes

Concurrency Level:      8
Time taken for tests:   0.403 seconds
Complete requests:      5000
Failed requests:        0
Total transferred:      1035000 bytes
HTML transferred:       80000 bytes
Requests per second:    12409.10 [#/sec] (mean)
Time per request:       0.645 [ms] (mean)
Time per request:       0.081 [ms] (mean, across all concurrent requests)
Transfer rate:          2508.48 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.1      0       1
Processing:     0    0   0.1      0       1
Waiting:        0    0   0.1      0       1
Total:          0    1   0.1      1       2

Percentage of the requests served within a certain time (ms)
  50%      1
  66%      1
  75%      1
  80%      1
  90%      1
  95%      1
  98%      1
  99%      1
 100%      2 (longest request)
```
