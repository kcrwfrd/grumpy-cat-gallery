module.exports = (gulp) ->
  gulp.task 'fonts:dev', ->
    return gulp.src 'vendor/bower_components/bootstrap-sass/assets/fonts/**/*'
      .pipe gulp.dest 'build/fonts'

  gulp.task 'fonts:dist', ->
    return gulp.src 'vendor/bower_components/bootstrap-sass/assets/fonts/**/*'
      .pipe gulp.dest 'dist/fonts'
