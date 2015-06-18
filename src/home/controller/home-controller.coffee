angular.module 'app.home'
.controller 'HomeController', (
  $filter
  $scope
  GrumpyCatCollection
) ->
  $scope.state =
    search: ''
    is_loading: true

  $scope.grumpy_cat_collection = new GrumpyCatCollection()

  $scope.grumpy_cat_collection.fetch().then (models) ->
    $scope.images = models
    $scope.state.is_loading = false

  $scope.onSearch = (query) ->
    $scope.images =
      $filter('filter') $scope.grumpy_cat_collection.models,
        title: query
