Plug Benchmark
==============

A little test app to benchmark plug performance.

You can start the server  with `mix server` and then run a basic apache benchmark of 1,000 requests (concurrency of 4) with `./benchmark.sh`.

The results will be something like:

```
erver Hostname:        127.0.0.1
Server Port:            4000

Document Path:          /
Document Length:        16 bytes

Concurrency Level:      4
Time taken for tests:   5.101 seconds
Complete requests:      1000
Failed requests:        0
Total transferred:      207000 bytes
HTML transferred:       16000 bytes
Requests per second:    196.06 [#/sec] (mean)
Time per request:       20.402 [ms] (mean)
Time per request:       5.101 [ms] (mean, across all concurrent requests)
Transfer rate:          39.63 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        5   10   3.4     10      24
Processing:     5   10   1.9     10      24
Waiting:        5    9   2.4     10      22
Total:         10   20   3.8     20      36

Percentage of the requests served within a certain time (ms)
  50%     20
  66%     20
  75%     23
  80%     24
  90%     25
  95%     26
  98%     29
  99%     32
 100%     36 (longest request)
```
