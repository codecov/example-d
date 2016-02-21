Codecov D Example
=================

| [https://codecov.io][1] | [@codecov][2] | [hello@codecov.io][3] |
| ----------------------- | ------------- | --------------------- |

This repository serves as an **example** on how to use [Codecov Global][4] for D.


# Travis CI

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

> All other CI you can simply run `bash <(curl -s https://codecov.io/bash)`.

## Private Repos
> Set `CODECOV_TOKEN` in your environment variables.

Add to your `.travis.yml` file.
```yml
after_success:
  - bash <(curl -s https://codecov.io/bash) -t :uuid-repo-token
```
> Or you can set the enviornment variable `CODECOV_TOKEN` to your token.

View source and learn more about [Codecov Global Uploader][4]

[1]: https://codecov.io/
[2]: https://twitter.com/codecov
[3]: mailto:hello@codecov.io
[4]: https://github.com/codecov/codecov-bash
