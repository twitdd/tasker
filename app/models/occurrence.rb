require 'ice_cube'

class Occurrence < ActiveRecord::Base
  belongs_to :task
  
  def set_schedule(schedule)
     self.ice_cube_yaml = schedule.to_yaml
  end
  
  def get_schedule()
    IceCube::Schedule.from_yaml(ice_cube_yaml)
  end
  
  private
  

  
  
end
