`import Ember from 'ember'`

IndexRoute = Ember.Route.extend
  redirect: ->
    @transitionTo('users')

`export default IndexRoute`
