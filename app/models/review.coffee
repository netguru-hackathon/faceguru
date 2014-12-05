`import DS from 'ember-data'`

Review = DS.Model.extend
  createdAt: DS.attr 'date'
  user: DS.belongsTo 'user'
  communication: DS.attr 'string'
  organization: DS.attr 'string'
  backend: DS.attr 'string'
  frontendSpa: DS.attr 'string'
  frontendDesign: DS.attr 'string'
  feedback: DS.attr 'string'
  selfImprovement: DS.attr 'string'
  serverAdministration: DS.attr 'string'
  leadership: DS.attr 'string'
  flow: DS.attr 'string'

Review.reopenClass {
  FIXTURES: [
    {
      id: 100
      createdAt: "Fri Dec 05 2014 16:19:36 GMT+0100 (CET)"
      user: 1
      communication: "All good"
      organization: "Could be better"
      backend: "Outstanding"
      frontendSpa: "Simply glorious"
      frontendDesign: "Quite fine"
      feedback: "Alright"
      selfImprovement: "No complaints"
      serverAdministration: "Stil learning"
      leadership: "Splendid"
      flow: "Terrible"
    }
  ]
}

`export default Review`
