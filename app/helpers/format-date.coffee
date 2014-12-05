`import Ember from 'ember'`

formatDate = (date) ->
  (new Date(date)).toLocaleString() if date?

FormatDateHelper = Ember.Handlebars.makeBoundHelper formatDate

`export { formatDate }`

`export default FormatDateHelper`
