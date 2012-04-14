Todos.ClearCompletedButtonView = Ember.Button.extend

  controller: null
  classNameBindings: ['shouldHideButtonClass']

  completedString: (->
    completed = @controller.get 'completed'
    itemsString = if completed <= 1 then "item" else "items"

    return "#{completed} completed #{itemsString}"
  ).property 'controller.completed'

  shouldHideButtonClass: (->
    if (@controller.get 'completed') < 1 then "hidden" else ""
  ).property 'controller.completed'

  click: -> @controller.clearCompletedTodos()