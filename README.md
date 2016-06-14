# sidekiq-limit_fetch 100% CPU bug test case

To run sidekiq without bug:

```
$ bundle
$ bundle exec sidekiq -c 1 -q default -r ./worker.rb  -v
```

To run sidekiq with bug:

```
$ bundle exec sidekiq -c 2 -q default -r ./worker.rb  -v
```

See https://github.com/brainopia/sidekiq-limit_fetch/issues/63 for more details.
