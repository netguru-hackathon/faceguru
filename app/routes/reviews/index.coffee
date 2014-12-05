`import Ember from 'ember'`

ReviewsIndexRoute = Ember.Route.extend
  model: ->
    @modelFor('users/show')

`export default ReviewsIndexRoute`
