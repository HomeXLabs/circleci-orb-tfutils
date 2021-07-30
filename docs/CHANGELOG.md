## [1.3.3](https://github.com/HomeXLabs/circleci-orb-tfutils/compare/v1.3.2...v1.3.3) (2021-07-30)


### Bug Fixes

* **vault:** update vault orb version ([#12](https://github.com/HomeXLabs/circleci-orb-tfutils/issues/12)) ([ac82b42](https://github.com/HomeXLabs/circleci-orb-tfutils/commit/ac82b4259edfda3dd2162257954a0f5e1e3ffd3f))

## [1.3.2](https://github.com/HomeXLabs/circleci-orb-tfutils/compare/v1.3.1...v1.3.2) (2021-07-15)


### Bug Fixes

* trigger run only ([#11](https://github.com/HomeXLabs/circleci-orb-tfutils/issues/11)) ([b31f500](https://github.com/HomeXLabs/circleci-orb-tfutils/commit/b31f5001b270440c7c406e9046f7017fa30315d0))

## [1.3.1](https://github.com/HomeXLabs/circleci-orb-tfutils/compare/v1.3.0...v1.3.1) (2021-06-30)


### Bug Fixes

* Fix checking status of configuration version ([#10](https://github.com/HomeXLabs/circleci-orb-tfutils/issues/10)) ([c34d331](https://github.com/HomeXLabs/circleci-orb-tfutils/commit/c34d3312351a2ac563d29dd453145591f6292c33))

# [1.3.0](https://github.com/HomeXLabs/circleci-orb-tfutils/compare/v1.2.0...v1.3.0) (2021-06-30)


### Features

* allow speculative plans ([#9](https://github.com/HomeXLabs/circleci-orb-tfutils/issues/9)) ([15b862c](https://github.com/HomeXLabs/circleci-orb-tfutils/commit/15b862c35e29b78b660626c6b4c1fd005550cd31))

# [1.2.0](https://github.com/HomeXLabs/circleci-orb-tfutils/compare/v1.1.2...v1.2.0) (2021-06-24)


### Features

* add job to create tfc runs ([#8](https://github.com/HomeXLabs/circleci-orb-tfutils/issues/8)) ([a95e670](https://github.com/HomeXLabs/circleci-orb-tfutils/commit/a95e6700854b92139aff1b3df111fd365bf20c21))

## [1.1.2](https://github.com/HomeXLabs/circleci-orb-tfutils/compare/v1.1.1...v1.1.2) (2021-06-11)


### Bug Fixes

* update validation command syntax ([#5](https://github.com/HomeXLabs/circleci-orb-tfutils/issues/5)) ([aaa48d2](https://github.com/HomeXLabs/circleci-orb-tfutils/commit/aaa48d2d470b55871f72211aac94523885c95f0b))

## [1.1.1](https://github.com/HomeXLabs/circleci-orb-tfutils/compare/v1.1.0...v1.1.1) (2020-08-14)


### Bug Fixes

* add some more checking and output ([0a822eb](https://github.com/HomeXLabs/circleci-orb-tfutils/commit/0a822ebe4582f572f3be69d52741f8e6f692b8ee))
* add some output for testing ([6a7af23](https://github.com/HomeXLabs/circleci-orb-tfutils/commit/6a7af2319a83b223f2305d636a0bcdd81abc8744))
* add some output for testing ([63d0215](https://github.com/HomeXLabs/circleci-orb-tfutils/commit/63d0215d90f3a3e28879a57ba39fb893b4a733c1))
* add true to ensure the command always exits with 0 ([1184d5c](https://github.com/HomeXLabs/circleci-orb-tfutils/commit/1184d5c362c93d13349c26d24572cd65d3481a20))
* bug where we weren't parsing the JSON anymore ([89b3195](https://github.com/HomeXLabs/circleci-orb-tfutils/commit/89b3195eefca522d256f2db40fb2d345bde5e065))
* missing quote ([750e1fe](https://github.com/HomeXLabs/circleci-orb-tfutils/commit/750e1fe2a91f45de8ec4a2333f572fb374764287))
* remove trailing spaces ([4d0920a](https://github.com/HomeXLabs/circleci-orb-tfutils/commit/4d0920aa73d9e6a4738778ee27fb58f4fd64905c))
* test output of command ([b0c89d6](https://github.com/HomeXLabs/circleci-orb-tfutils/commit/b0c89d6aaccebcc4343689dfb9b7cc220b34c57e))
* use absolute path since it doesn't always seem to work properly ([67425f1](https://github.com/HomeXLabs/circleci-orb-tfutils/commit/67425f1e82b8f921a99810bb5679d79dbaa7a10d))

# [1.1.0](https://github.com/HomeXLabs/circleci-orb-tfutils/compare/v1.0.1...v1.1.0) (2020-08-13)


### Bug Fixes

* add space around ] ([62148b1](https://github.com/HomeXLabs/circleci-orb-tfutils/commit/62148b1644b4a183737f6273c59534fe44100346))
* update path to current directory ([b054e12](https://github.com/HomeXLabs/circleci-orb-tfutils/commit/b054e1222f1cfbab24348079123a5add7dcb61eb))


### Features

* add latest-required terraform version ([b32b4ed](https://github.com/HomeXLabs/circleci-orb-tfutils/commit/b32b4ed5bfab3c70a829746d19a10418cdddc786))

# 1.0.0 (2020-05-08)


### Bug Fixes

* add better error messages ([1eaee55](https://github.com/HomeXLabs/circleci-orb-tfutils/commit/1eaee552fbb3e80f0f9e2433aae2e5591f2ae9ce))
* add default for vault-path ([6175b19](https://github.com/HomeXLabs/circleci-orb-tfutils/commit/6175b1956325087fb5cd7b63d41dffddf5f82368))
* add terraform install to jobs ([b8dbc5d](https://github.com/HomeXLabs/circleci-orb-tfutils/commit/b8dbc5d92c120bb3591595ec6d9b71ea3c5dc45e))
* also install tflint ([6e4112e](https://github.com/HomeXLabs/circleci-orb-tfutils/commit/6e4112e855a920610cde143d919a4dad78843288))
* by default use master ([746d488](https://github.com/HomeXLabs/circleci-orb-tfutils/commit/746d4888e113a3e1b27ff85925a30537146e54c8))
* change directory to tfenv installation ([f99adfc](https://github.com/HomeXLabs/circleci-orb-tfutils/commit/f99adfc68dfcb636fe386b6428cfbafdb2e3e205))
* change tfenv install method ([311ec45](https://github.com/HomeXLabs/circleci-orb-tfutils/commit/311ec459251e925f9f2a0236e4a5be6aa43f74cb))
* change tflint path ([cc9dd93](https://github.com/HomeXLabs/circleci-orb-tfutils/commit/cc9dd9397edb69233549d940e92e51b057514fb4))
* cleanup spacing in circleci file ([0f00cd0](https://github.com/HomeXLabs/circleci-orb-tfutils/commit/0f00cd02883f9c8e69e8a86804d71523c4764bf3))
* data json file name ([bfa7341](https://github.com/HomeXLabs/circleci-orb-tfutils/commit/bfa7341b36303a66ab99e174fdeffdb8e8fca386))
* EOF for add-release ([6efd1e5](https://github.com/HomeXLabs/circleci-orb-tfutils/commit/6efd1e57b0756be42f6acabbe6ead6e272e11b95))
* fix existing role name ([e43726c](https://github.com/HomeXLabs/circleci-orb-tfutils/commit/e43726c0dbbd0b10634a458631f250dda6323fa6))
* publish to the right orb ([cd1d96c](https://github.com/HomeXLabs/circleci-orb-tfutils/commit/cd1d96c47b2bda2e4dca690d62cc64c04fe7bc9d))
* stray parameter refrences ([523f1f6](https://github.com/HomeXLabs/circleci-orb-tfutils/commit/523f1f6bb1687fa0d2d0c388582db18555bf00c1))
* tfenv and tflint redirects ([1dc3858](https://github.com/HomeXLabs/circleci-orb-tfutils/commit/1dc3858d44d6471e0e0c09b4d7b413c792f06bcb))
* tfenv installation version variable ([32d94df](https://github.com/HomeXLabs/circleci-orb-tfutils/commit/32d94df0c0ea6068be4461c9b64631126fdc2de2))
* update vault orb to 1.1.1 ([bc81aef](https://github.com/HomeXLabs/circleci-orb-tfutils/commit/bc81aefee67313e8cdb292c235472ec63a8ce651))


### Features

* Initial version ([d4ed435](https://github.com/HomeXLabs/circleci-orb-tfutils/commit/d4ed4355ebbf92eda8111fcebc6515b62fdd6b92))

# 1.0.0 (2020-03-23)


### Bug Fixes

* add better error messages ([1eaee55](https://github.com/HomeXLabs/circleci-orb-tfutils/commit/1eaee552fbb3e80f0f9e2433aae2e5591f2ae9ce))
* add default for vault-path ([6175b19](https://github.com/HomeXLabs/circleci-orb-tfutils/commit/6175b1956325087fb5cd7b63d41dffddf5f82368))
* add terraform install to jobs ([b8dbc5d](https://github.com/HomeXLabs/circleci-orb-tfutils/commit/b8dbc5d92c120bb3591595ec6d9b71ea3c5dc45e))
* also install tflint ([6e4112e](https://github.com/HomeXLabs/circleci-orb-tfutils/commit/6e4112e855a920610cde143d919a4dad78843288))
* by default use master ([746d488](https://github.com/HomeXLabs/circleci-orb-tfutils/commit/746d4888e113a3e1b27ff85925a30537146e54c8))
* change directory to tfenv installation ([f99adfc](https://github.com/HomeXLabs/circleci-orb-tfutils/commit/f99adfc68dfcb636fe386b6428cfbafdb2e3e205))
* change tfenv install method ([311ec45](https://github.com/HomeXLabs/circleci-orb-tfutils/commit/311ec459251e925f9f2a0236e4a5be6aa43f74cb))
* change tflint path ([cc9dd93](https://github.com/HomeXLabs/circleci-orb-tfutils/commit/cc9dd9397edb69233549d940e92e51b057514fb4))
* cleanup spacing in circleci file ([0f00cd0](https://github.com/HomeXLabs/circleci-orb-tfutils/commit/0f00cd02883f9c8e69e8a86804d71523c4764bf3))
* data json file name ([bfa7341](https://github.com/HomeXLabs/circleci-orb-tfutils/commit/bfa7341b36303a66ab99e174fdeffdb8e8fca386))
* EOF for add-release ([6efd1e5](https://github.com/HomeXLabs/circleci-orb-tfutils/commit/6efd1e57b0756be42f6acabbe6ead6e272e11b95))
* publish to the right orb ([cd1d96c](https://github.com/HomeXLabs/circleci-orb-tfutils/commit/cd1d96c47b2bda2e4dca690d62cc64c04fe7bc9d))
* stray parameter refrences ([523f1f6](https://github.com/HomeXLabs/circleci-orb-tfutils/commit/523f1f6bb1687fa0d2d0c388582db18555bf00c1))
* tfenv and tflint redirects ([1dc3858](https://github.com/HomeXLabs/circleci-orb-tfutils/commit/1dc3858d44d6471e0e0c09b4d7b413c792f06bcb))
* tfenv installation version variable ([32d94df](https://github.com/HomeXLabs/circleci-orb-tfutils/commit/32d94df0c0ea6068be4461c9b64631126fdc2de2))
* update vault orb to 1.1.1 ([bc81aef](https://github.com/HomeXLabs/circleci-orb-tfutils/commit/bc81aefee67313e8cdb292c235472ec63a8ce651))


### Features

* Initial version ([d4ed435](https://github.com/HomeXLabs/circleci-orb-tfutils/commit/d4ed4355ebbf92eda8111fcebc6515b62fdd6b92))
