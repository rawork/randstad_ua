const gulp = require('gulp');
const sass = require('gulp-sass');
const gutil = require('gulp-util');
const autoprefixer = require('gulp-autoprefixer');
const cleanCSS = require('gulp-clean-css');

gulp.task('styles', function() {
  gulp.src('./scss/app.scss')
    .pipe(sass().on('error', sass.logError))
    .pipe(autoprefixer({
      browsers: ['> 1%', 'last 40 versions'],
      cascade: true
    }))
    //.pipe(cleanCSS())
    .pipe(gulp.dest('./css/'))
});

gulp.task('build', ['styles']);

gulp.task('default', function() {
  gulp.watch('scss/**/*.scss', ['styles']);
});
