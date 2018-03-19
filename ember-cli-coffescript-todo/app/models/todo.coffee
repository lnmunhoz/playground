`import DS from 'ember-data'`

Todo = DS.Model.extend
  text: DS.attr 'string'
  isChecked: DS.attr 'boolean'



`export default Todo`
