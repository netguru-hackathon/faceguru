`import DS from 'ember-data'`

User = DS.Model.extend
  firstName: DS.attr 'string'
  lastName: DS.attr 'string'
  position: DS.attr 'string'
  lastReview: DS.attr 'string'
  reviews: DS.hasMany 'review', async: true

  fullName: (->
    "#{@get('firstName')} #{@get('lastName')}"
  ).property('firstName', 'lastName')

User.reopenClass {
  FIXTURES: [
    {
      id: 1,
      firstName: 'Steve',
      lastName: 'Stevenson',
      position: 'Dev',
      lastReview: '10/10/2014'
      reviews: [100]
    },
    {
      id: 2,
      firstName: 'Dave',
      lastName: 'Davidson',
      position: 'QA',
      lastReview: '10/10/2014'
    },
    {
      id: 3,
      firstName: 'John',
      lastName: 'Johnson',
      position: 'Sales',
      lastReview: '10/10/2014'
    },
    {
      id: 4,
      firstName: 'Eric',
      lastName: 'Ericsson',
      position: 'Senior dev',
      lastReview: '10/10/2014'
    },
  ]
}

`export default User`
