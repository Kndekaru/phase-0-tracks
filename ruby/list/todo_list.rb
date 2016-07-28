class TodoList
  attr_accessor :get_items

  def initialize(get_items)
    @get_items = get_items
  end

  def add_item(item)
    @get_items.push(item)
  end

  def delete_item(item)
    @get_items.delete(item)
  end

  def get_item(i)
    @get_items[i]
  end

end

# list = TodoList.new(["do the dishes", "mow the lawn"])
# p list.get_items