# [Codecov][1] D Example
## Guide
This repository serves as an **example** on how to use [Codecov Global][4] for D.

### Travis Setup

Add to your `.travis.yml` file.
```yml
language: d
d:
 - dmd-2.066.1

script:
 - dub test -b unittest-cov --compiler=${DC}
after_success:
 - bash <(curl -s https://codecov.io/bash)
```

## Caveats
### Private Repos
Add to your `.travis.yml` file.
```yml
after_success:
  - bash <(curl -s https://codecov.io/bash) -t uuid-repo-token
```

## Support

### Contact
- Intercom (in-app messanger)
- Email: support@codecov.io
- Slack: slack.codecov.io
- [gh/codecov/support](https://github.com/codecov/support)

1. More documentation at https://docs.codecov.io
2. Configure codecov through the `codecov.yml`  https://docs.codecov.io/docs/codecov-yaml



We are happy to help if you have any questions. Please contact email our Support at [support@codecov.io](mailto:support@codecov.io)

[1]: https://codecov.io/
[2]: https://github.com/codecov/example-php/blob/master/.travis.yml#L15
[3]: https://github.com/codecov/example-php/blob/master/.travis.yml#L18
[4]: https://github.com/codecov/codecov-python
