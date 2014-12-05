`import Ember from 'ember'`

UsersShowRoute = Ember.Route.extend
  redirect: ->
    @transitionTo('reviews.index')

`export default UsersShowRoute`
