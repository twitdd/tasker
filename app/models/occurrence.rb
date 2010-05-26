require 'ice_cube'

class Occurrence < ActiveRecord::Base
  belongs_to :task
  
  def schedule=(schedule)
     self.ice_cube_yaml = schedule.to_yaml
  end
  
  def schedule
    IceCube::Schedule.from_yaml(ice_cube_yaml)
  end
  
  private
  

  
  
end
