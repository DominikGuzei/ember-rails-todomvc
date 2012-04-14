@Todos = Ember.Application.extend

  rootElement: '#todoapp'

  ready: ->
    Todos.todosController = Todos.TodosController.create()
    Todos.contentView = Todos.ContentView.create controller: Todos.todosController
    Todos.contentView.appendTo @rootElement
    
Todos.create()