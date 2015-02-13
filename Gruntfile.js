module.exports = function(grunt) {

  require('jit-grunt')(grunt);

  grunt.initConfig({

    pkg: grunt.file.readJSON('package.json'),

      // compile scss to css
      sass: {
          dist: {
              options: {
                  style: 'expanded',
                  precision: 5
              },
              files: [{
                  expand: true,
                  cwd: '_sass',
                  src: ['*.scss'],
                  dest: 'css',
                  ext: '.css'
              }]
          }
      },

      // add browser prefixes
      autoprefixer: {
          files: {
              src: 'css/main.css',
              dest: 'css/main.min.css',
          },
      },

/*
      dist: {
        src: ['public/templates/*.js'],
        dest: 'public/templates.js'
      }
*/

    watch: {
      styles: {
          files: ['_sass/**/*.scss'],
          tasks: ['sass', 'autoprefixer']
      }
    }

  });

 // grunt.loadNpmTasks('grunt-contrib-cssmin');

//  grunt.loadNpmTasks('grunt-contrib-qunit');
//  grunt.loadNpmTasks('grunt-contrib-watch');
 // grunt.loadNpmTasks('grunt-contrib-concat');
//grunt.loadNpmTasks('grunt-closure-compiler');

 // grunt.registerTask('test', ['jshint', 'qunit']);

//  grunt.registerTask('default', ['concat']);
//grunt.loadNpmTasks('grunt-obfuscator');
//grunt.loadNpmTasks('grunt-contrib-uglify');

//grunt.loadNpmTasks('grunt-uncss');
};
