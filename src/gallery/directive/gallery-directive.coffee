angular.module 'app.gallery'
.directive 'kcGallery', ->
  restrict: 'E'
  templateUrl: '/gallery/_gallery.html'

  scope:
    images: '=images'
