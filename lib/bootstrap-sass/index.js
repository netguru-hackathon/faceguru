'use strict';
var path = require('path');

module.exports = {
  name: "bootstrap-sass",

  treeForStyles: function() {
    var bootstrapPath = path.join(
      this.app.bowerDirectory,
      'bootstrap-sass-official',
      'assets',
      'stylesheets'
    );
    var bootstrapTree = this.pickFiles(this.treeGenerator(bootstrapPath), {
      srcDir: '/',
      destDir: '/app/styles'
    });
    return bootstrapTree;
  }
};
