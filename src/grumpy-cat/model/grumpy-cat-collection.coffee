angular.module 'app.grumpyCat'
.factory 'GrumpyCatCollection', (
  Collection
) ->
  class GrumpyCatCollection extends Collection
    url: '/api/grumpy-cats.json'
