`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  @resource 'users', ->
    @route 'show', path: ':user_id', ->
      @resource "reviews", path: 'reviews', ->
        @route 'show', path: ':review_id'

`export default Router`
