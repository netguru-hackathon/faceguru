`import Ember from 'ember'`

UsersIndexController = Ember.ArrayController.extend
  filter: '',

  filteredContent: (->
    filter = this.get('filter');
    rx = new RegExp(filter, 'gi');
    users = this.get('arrangedContent');

    return users.filter (user) ->
      return user.get('firstName').match(rx) || user.get('lastName').match(rx)

  ).property('arrangedContent', 'filter'),

  actions:
    sortBy: (property) ->
      @set('sortProperties', [property])
      @set('sortAscending', not @get('sortAscending'))

`export default UsersIndexController`
