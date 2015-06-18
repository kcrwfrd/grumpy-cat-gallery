###
@name Collection
@description
Binding to a RESTful API resource, e.g. `/api/posts`
###

angular.module 'collection'
.factory 'Collection', (
  $http
  $q
) ->
  class Collection

    ###
    @name Collection~constructor

    @param {[Array]} models - Optional, array of models

    @param {[Object]} options - Optional
    @param {String} options.url - Overrides collection definition's URL
    ###

    constructor: (models = [], options = {}) ->
      @models = models

      # URL may be overridden, else default to prototype's URL
      @url = options.url or @url

    ###
    @name Collection~fetch
    @description
    Fetches models from API, storing as an array in collection's
    `models` attribute

    @returns {Promise}
    ###

    fetch: ->
      deferred = $q.defer()

      $http.get @url

      .success (data) =>
        @models = data.data
        deferred.resolve @models

      .error (data) ->
        deferred.reject new Error 'Error loading models'

      return deferred.promise
