gsap = require 'gsap'

class Rectangle extends PIXI.Graphics

    constructor: (c, app) ->
        super()
        @on "mouseover", @onHover
        @on "mouseout", @onOut
        @app = app
        @data = c
        @beginFill(@data.color, @data.alpha)
        @lineStyle(1, 0xfff000)
        @drawRect(0, 0, @data.width, @data.height)
        @x = @data.x
        @y = @data.y
        @interactive = true
        @endFill()
        @animate()

    onHover: () =>
        gsap.TweenMax.to @, 0.5, {width: 0},

    onOut: () =>
        gsap.TweenMax.to @, 0.5, {width: 100},

    animate: () =>
        null

module.exports = Rectangle
