assert = require 'assert'
zombie = require 'zombie'

describe 'client example test', ->
  host = "http://localhost:4444"
  browser = null
  window = null
  $ = null

  # calldone after callback
  before (done) ->
    zombie.visit host, (e, br, status) ->
      browser = br
      window = browser.window
      $ = window.$
      done()

  # DOM Test
  it 'H1 is Title', ->
    assert.equal $('h1').text(), "Title"

  # Async Test
  it 'wait $.get async', (done)->
    $.get "/",(data)->
      assert.ok data?
      done()

  # Event Test
  it 'double click', ->
    window.onload() # 明示的に発行する必要はないはずだが…
    $('button.push-me').click()
    assert.equal $('button.push-me').text(), "push-done"