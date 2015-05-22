
resignal = (times, timespan)->

    timespan = timespan * 1000
    log = []
    callbacks =
        occured: []
        report: []

    on: (event, callback)->
        throw Error("unknow event type #{event}") unless event of callbacks
        callbacks[event].push callback

    log: ->
        cb() for cb in callbacks.occured
        now = +new Date
        start = now - timespan
        log = log.filter (x)-> x >= start
        log.push +new Date
        if log.length >= times
            cb() for cb in callbacks.report
            log = []

module.exports = resignal
