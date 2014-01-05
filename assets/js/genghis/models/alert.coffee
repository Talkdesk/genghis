define (require) ->
  Giraffe = require('backbone.giraffe')

  class Alert extends Giraffe.Model
    defaults:
      level: 'warning'
      block: false

    block: ->
      !!@get('block')

    level: ->
      level = @get('level')
      (if (level is 'error') then 'danger' else level)

    msg: ->
      @get 'msg'


