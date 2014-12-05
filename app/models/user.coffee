`import DS from 'ember-data'`

User = DS.Model.extend
  firstName: DS.attr 'string'
  lastName: DS.attr 'string'
  position: DS.attr 'string'
  lastReview: DS.attr 'string'

  fullName: (->
    "#{@get('firstName')} #{@get('lastName')}"
  ).property('firstName', 'lastName')

User.reopenClass {
  FIXTURES: [
    {
      id: 1,
      firstName: 'Second',
      lastName: 'Stevenson',
      position: 'Dev',
      lastReview: new Date(2014,10,11)
    },
    {
      id: 2,
      firstName: 'Third',
      lastName: 'Davidson',
      position: 'QA',
      lastReview: new Date(2014,10,12)
    },
    {
      id: 3,
      firstName: 'Forth',
      lastName: 'Johnson',
      position: 'Sales',
      lastReview: new Date(2014,10,13)
    },
    {
      id: 4,
      firstName: 'First',
      lastName: 'Ericsson',
      position: 'Senior dev',
      lastReview: new Date(2014,10,10)
    },
  ]
}

`export default User`
