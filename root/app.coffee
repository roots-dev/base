axis = require 'axis-css'
autoprefixer = require 'autoprefixer-stylus'
rupture = require 'rupture'
browserify = require 'roots-browserify'

module.exports =
  ignores: ['readme.md', '**/layout.*']

  stylus:
    use: [axis(), autoprefixer(), rupture()]

  after: browserify(in: 'js/main.js', out: 'js/dist.js')
