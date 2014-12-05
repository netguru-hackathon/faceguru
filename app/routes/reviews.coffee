`import Ember from 'ember'`

ReviewsRoute = Ember.Route.extend
  actions: 
    createReview: ->
      review = @store.createRecord('review',
        user: this.modelFor('users/show')
        date: new Date()
      ).save()
      @transitionTo('reviews.show', review)

`export default ReviewsRoute`
