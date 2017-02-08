'use strict'

spec = require('ddry/modular')()

spec.apply
  title: 'ddry and Mocha dependencies presence'
  spec: 'spec/usecase'
  moduleTitles:
    dependencies: 'ddry-mocha dependencies'
  outside:
    dependencies: 'usecase/dependencies'
