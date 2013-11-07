class Site
  include PageObject

  def initialize(world)
    @world = world
  end

  def method_missing (method, *args, &block)
    @world.send(method, *args, &block)
  end
end