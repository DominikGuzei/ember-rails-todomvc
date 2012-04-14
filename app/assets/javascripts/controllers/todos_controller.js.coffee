#= require models/todo

Todos.TodosController = Ember.ArrayProxy.extend

  content: []

  createTodo: (title) -> @pushObject Todos.Todo.create title: title

  completeTodo: (todo) -> todo.set 'isDone', true

  clearCompletedTodos: -> (@filterProperty 'isDone', true).forEach @removeObject, this

  allAreDone: ((key, value)->
    if value?
      @setEach('isDone', value);

      return value;
    else
      return @get('length') > 0 && (@everyProperty 'isDone', true)

  ).property '@each.isDone'

  remaining: (->
    (@filterProperty 'isDone', false).get 'length'
  ).property '@each.isDone'

  completed: (->
    (@filterProperty 'isDone', true).get 'length'
  ).property '@each.isDone'