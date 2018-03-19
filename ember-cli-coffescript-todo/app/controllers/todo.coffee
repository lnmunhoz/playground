`import Ember from 'ember'`

TodoController = Ember.ArrayController.extend
  newTodo: ''

  todosChecked: (->
    @get('model').filterBy('isChecked', true).get('length')
  ).property('@each.isChecked')


  actions:
    create: ->
      todo = @store.createRecord 'todo',
        text: @get('newTodo')
        isChecked: false

      @get('model').pushObject(todo)
      @set('newTodo', '') # Reset field

    delete: (todo) ->
      @get('model').removeObject(todo)


`export default TodoController`
