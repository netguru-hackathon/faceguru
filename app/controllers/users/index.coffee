`import Ember from 'ember'`

UsersIndexController = Ember.ArrayController.extend
  sortAscending: false,
  sortProperties: ['lastReview'],

  filter: '',

  filteredContent: (->
    filter = @get('filter')
    rx = new RegExp(filter, 'gi')
    users = @get('arrangedContent')

    users.filter (user) ->
      user.get('fullName').match(rx)

  ).property('arrangedContent', 'filter'),

  actions:
    sortBy: (property) ->
      @set('sortProperties', [property])
      @set('sortAscending', not @get('sortAscending'))

`export default UsersIndexController`
