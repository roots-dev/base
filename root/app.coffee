cssnext     = require 'postcss-cssnext'
imports     = require 'postcss-import'
whitespace  = require 'css-whitespace'
js_pipeline = require 'js-pipeline'

module.exports =
  ignores: ['readme.md', '**/layout.*', '**/_*', '.gitignore', 'ship.*conf']

  extensions: [
    js_pipeline(files: 'assets/js/*.coffee'),
  ]

  babel:
    presets: ['es2015', 'stage-2']

  postcss:
    use: [imports(transform: whitespace), cssnext]
    from: 'assets/css/master.css'

  jade:
    pretty: true
