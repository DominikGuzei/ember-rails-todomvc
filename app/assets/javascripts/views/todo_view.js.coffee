Todos.TodoView = Ember.Checkbox.extend

  content: null
  classNameBindings: ['isDone']

  isDoneBinding: 'content.isDone'
  titleBinding: 'content.title'
  valueBinding: 'isDone'