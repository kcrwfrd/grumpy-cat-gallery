angular.module 'app', [
  'app.gallery'
  'app.grumpyCat'
  'app.home'
  'templates'
  'ui.router'
]

.config (
  $stateProvider
  $urlRouterProvider
) ->
  $urlRouterProvider.otherwise '/home'
