`import Ember from 'ember'`

UsersIndexRoute = Ember.Route.extend
  model: ->
    @store.find 'user'

`export default UsersIndexRoute`
