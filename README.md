Plug Benchmark
==============

A little test app to benchmark plug performance.

You can start the server  with `mix server` and then run a basic apache benchmark of 50,000 requests (concurrency of 8) with `./benchmark.sh`.

On my mid-2014 macbook pro with 2 cores, OTP 21, elixir 1.7.1, plug 1.6.2 and cowboy 1.1.2 I get:

```
$ ab -k -n 50000 -c 8 http://127.0.0.1:4000/
This is ApacheBench, Version 2.3 <$Revision: 1826891 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking 127.0.0.1 (be patient)
Completed 5000 requests
Completed 10000 requests
Completed 15000 requests
Completed 20000 requests
Completed 25000 requests
Completed 30000 requests
Completed 35000 requests
Completed 40000 requests
Completed 45000 requests
Completed 50000 requests
Finished 50000 requests


Server Software:        Cowboy
Server Hostname:        127.0.0.1
Server Port:            4000

Document Path:          /
Document Length:        16 bytes

Concurrency Level:      8
Time taken for tests:   2.379 seconds
Complete requests:      50000
Failed requests:        0
Keep-Alive requests:    49504
Total transferred:      11538096 bytes
HTML transferred:       800000 bytes
Requests per second:    21014.08 [#/sec] (mean)
Time per request:       0.381 [ms] (mean)
Time per request:       0.048 [ms] (mean, across all concurrent requests)
Transfer rate:          4735.60 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.0      0       1
Processing:     0    0   0.3      0       8
Waiting:        0    0   0.3      0       8
Total:          0    0   0.3      0       8

Percentage of the requests served within a certain time (ms)
  50%      0
  66%      0
  75%      0
  80%      0
  90%      1
  95%      1
  98%      1
  99%      1
 100%      8 (longest request)
```
