`import Ember from 'ember'`

TodoRoute = Ember.Route.extend
  todos: []

  model: ->
    todo1 = @.store.createRecord 'todo',
      text: 'Do something'
      isChecked: false

    todo2 = @.store.createRecord 'todo',
      text: 'Do something else'
      isChecked: false

    @.get('todos').pushObjects([todo1, todo2])

`export default TodoRoute`
