Todos.CreateTodoView = Ember.TextField.extend

  controller: null

  insertNewline: ->
    value = @get 'value'
    controller = @get 'controller'

    if value? and controller?
      controller.createTodo value
      @set 'value', ''