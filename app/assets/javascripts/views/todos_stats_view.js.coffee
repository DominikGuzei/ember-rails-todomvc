Todos.StatsView = Ember.View.extend

  controller: null

  remainingString: (->
    remaining = @controller.get 'remaining'
    return remaining + (if remaining is 1 then " item" else " items")
  ).property 'controller.remaining'