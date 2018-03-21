# EchoServer

This is a readme of a basic Kitura websocket echo server. This is being used to test [autobahn-testsuite](https://github.com/crossbario/autobahn-testsuite).

It currently takes the most recent commit from master branch.

The docker image they suggest does not work for testing servers at the moment.

To run these tests:
1. Create and run this Echoserver
```
git clone https://github.com/Andrew-Lees11/WebSocketEchoServer
swift build
.build/x86_64-apple-macosx10.10/debug/EchoServer
```
2. Install the testsuite
```
virtualenv ~/wstest
source ~/wstest/bin/activate
pip install autobahntestsuite
```
3. run the testsuite
```
cd ~
mkdir testAutobahn
cd testAutobahn
wstest -m fuzzingclient
```

This will run the autobahn tests against a server running on port 9001.
To change the tests inside `testAutobahn`:
`open fuzzingclient.json`

In here you can select specific tests to include or exclude.

To view the results `open ~/testAutobahn/reports/servers/index.html`
