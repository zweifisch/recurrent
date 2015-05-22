resignal = require "./index"

describe "resignal", ->

    it "should report", (done)->

        observer = resignal 3, 10
        observer.on "report", ->
            done()

        observer.log()
        observer.log()

        setTimeout (-> observer.log()), 30

    it "should not report", (done)->

        observer = resignal 3, 10
        observer.on "report", ->
            done("error")

        observer.log()
        observer.log()

        setTimeout done, 50
    
    it "should not report", (done)->

        observer = resignal 3, 0.02
        observer.on "report", ->
            done("error")

        observer.log()
        observer.log()

        setTimeout (-> observer.log()), 40
        setTimeout done, 60

    it "should report twice", (done)->

        observer = resignal 2, 10
        times = 0
        observer.on "report", ->
            times += 1
            done() if times >= 2

        observer.log()
        observer.log()
        observer.log()
        observer.log()
        observer.log()
