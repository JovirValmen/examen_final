Rectangle = require("./elements/Rectangle")
DataRectangle = require('./data/rectangles')
Cuadro = require("./elements/Cuadro")

class App extends PIXI.Application
  animation: true
  animationNodes: []
  rectangles: []
  col: 10
  rows: 10
  width: window.innerWidth
  height: window.innerHeight
  constructor: (w, h, o) ->
    super(w, h, o)
    document.body.appendChild @view
    @build()
    @animate()

  build: =>
    for c in DataRectangle
      @rectangle = new Rectangle(c, @)
      @stage.addChild(@rectangle)
      @addAnimationNodes(@rectangle)
      @rectangles.push(@rectangle)

#    mywidth = @width / @col
#    myheight = @height / @rows

#    posX = 0
#    for r in [0...@rows]
#      s = new Cuadro()
#      @stage.addChild s

#      posY = 0
#      posX = @mywidth + posX
#      for c in [0...@col]
#        posY = @myheight + posY
#        t = new Cuadro()
#        @stage.addChild t

  addAnimationNodes: (child) =>
    @animationNodes.push child
    null

  animate: =>
    @ticker.add () =>
      for n in @animationNodes
        n.animate?()

    null

module.exports = App
