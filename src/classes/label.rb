class Label
  attr_reader :title, :color

  def initialize(id, title, color)
    @id = id
    @title = title
    @color = color
    @items = []
  end

  def add_item(item)
    @items << item unless @items.include?(self)
    item.label = self
  end
end
