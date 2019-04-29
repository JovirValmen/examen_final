gsap = require 'gsap'

class Cuadro extends PIXI.Graphics

    interactive: true
    buttonMode: true
    flip: false

    constructor: () ->
        super()
        @beginFill(0x000fff)
        @lineStyle(1, 0xfff000)
        @drawRect(0, 0, 100, 50)
        @x = 100
        @y = 100
        @endFill()
        @on "mouseover", @onOver
        @on "mouseout", @onOut

    onOver: () =>
        @flip = true
        if @flip is true
            null

    onOut: () =>
        if @flip is false
            null

module.exports = Cuadro