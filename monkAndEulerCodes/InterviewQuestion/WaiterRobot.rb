
#A customer will call the place_order method, which you'll have to pass on to the chef robot with your robot's
#name. The chef will then call your robot's serve method when the customer's sandwich is ready.
#Your robot needs to serve the correct sandwich/drink combo to the correct table at that point from the chef's
#sloppy data format.
class WaiterRobot

  def initialize(chef, tables)
    @chef = chef
    @tables = tables
    @name = "Tyler Durden"
  end

  def name
    @name
  end

  def place_order(table_number, sandwich, drink)
    order = {:table => table_number, :sandwich => sandwich, :drink => drink}
    @chef.new_order(self, order)
  end

  def serve(order)
    # digest the chef's sloppy order instructions:
    # 1) find the table number you need to serve
    o = Hash[*order]
    table_number = o[:table]
    table = @tables[table_number]

    # 2) call Table#serve_sandwich and Table#serve_drink
    table.serve_sandwich(o[:sandwich])
    table.serve_drink(o[:drink])
  end

end
