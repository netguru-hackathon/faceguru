`import Ember from 'ember'`

ReviewsRoute = Ember.Route.extend
  actions:
    createReview: ->
      review = @store.createRecord('review',
        user: this.modelFor('users/show')
        createdAt: new Date()
      ).save()
      @transitionTo('reviews.show', review)

`export default ReviewsRoute`
