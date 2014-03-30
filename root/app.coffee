axis         = require 'axis-css'
autoprefixer = require 'autoprefixer-stylus'
rupture      = require 'rupture'

module.exports =
  ignores: ['readme.md', '**/layout.*', '**/_*', '.gitignore', 'bower_components', 'bower.json']

  stylus:
    use: [axis(), autoprefixer(), rupture()]
