# zombie-tester-example

This example is client testing using zombie and mocha.

## Install

install node.js your own way (brew install node {on Mac} ... or others)

```
git clone git://github.com/mizchi/zombie-tester-example.git
cd zombie-tester-example
npm install
npm install -g mocha coffee-script
```

## Run example

```
$ coffee example_server.coffee &
$ npm test
```

## Add your test

Add test/*_test.coffee
First example is test/client_example_test.coffee

```
$ npm test
```

or

```
$ mocha -R spec --compilers coffee:coffee-script
```

by mocha options