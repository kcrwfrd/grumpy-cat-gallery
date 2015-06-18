angular.module 'app.home', [
  'app.grumpyCat'
  'ui.router'
]

.config (
  $stateProvider
) ->
  $stateProvider.state 'home',
    url: '/home'
    views:
      'main':
        controller: 'HomeController'
        templateUrl: '/home/home.html'
