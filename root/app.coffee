axis         = require 'axis-css'
autoprefixer = require 'autoprefixer-stylus'
rupture      = require 'rupture'

module.exports =
  ignores: ['readme.md', '**/_*']

  stylus:
    use: [axis(), autoprefixer(), rupture()]
