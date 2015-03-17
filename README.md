# example-d [![Build Status](https://img.shields.io/travis/codecov/example-d/master.svg)](https://travis-ci.org/codecov/example-d) [![codecov](https://img.shields.io/codecov/c/github/codecov/example-d.svg)](https://codecov.io/github/codecov/example-d) 

An example of how to upload code coverage results to [codecov.io](https://travis-ci.org/codecov/example-d).

### Travis CI

Add to your `.travis.yml` file.
```yml
language: d
d:
 - dmd-2.066.1

before_install:
 - sudo pip install codecov
script:
 - dub test -b unittest-cov --compiler=${DC}
after_success:
 - codecov
```

> Private repo? Run `codecov --token :token` replace `:token` with your repo upload token found on your repo page at [Codecov.io](https://codecov.io)
