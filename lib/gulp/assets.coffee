module.exports = (gulp) ->
  gulp.task 'assets:dev', ->
    return gulp.src 'assets/**/*'
      .pipe gulp.dest 'build/'

  gulp.task 'assets:dist', ->
    return gulp.src 'assets/**/*'
      .pipe gulp.dest 'dist/'
