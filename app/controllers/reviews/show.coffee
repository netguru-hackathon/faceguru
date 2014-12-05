`import Ember from 'ember'`

ReviewsShowController = Ember.Controller.extend
  actions:
    updateReview: (arg) ->
      arg.save()

`export default ReviewsShowController`
