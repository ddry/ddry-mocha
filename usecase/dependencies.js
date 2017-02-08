// Generated by CoffeeScript 1.12.3
(function() {
  'use strict';
  module.exports = {
    format: function(path) {
      return path.split('/').slice(-3).join('/');
    },
    ddry: function() {
      return this.format(require.resolve('ddry'));
    },
    mocha: function() {
      return this.format(require.resolve('mocha'));
    }
  };

}).call(this);