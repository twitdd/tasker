require 'rubygems'
require 'ice_cube'
require 'active_support' unless ENV['RAILS_ENV']

class ScheduleFactory
  
  def self.create_daily_schedule(start_date, until_date=nil)
    rule  = IceCube::Rule.daily.until(until_date)
    schedule = create_schedule start_date
    schedule.add_recurrence_rule rule
    schedule
  end
  
  def self.create_weekly_schedule(start_date, until_date, *days)
    schedule = create_schedule start_date
    days.each do |day|
      rule  = IceCube::Rule.weekly.day(day).until(until_date)
      schedule.add_recurrence_rule rule
    end
    schedule
  end
  
  private
  
  def self.create_schedule(start_date)
    IceCube::Schedule.new(start_date)
  end
  
end

require 'pp'
daily_s = ScheduleFactory.create_daily_schedule(Time.now)
daily_o = daily_s.occurrences(Time.now + 3.days);
pp daily_o

weekly_s = ScheduleFactory.create_weekly_schedule(Time.now, nil, :monday)
weekly_o = weekly_s.occurrences(Time.now + 3.weeks)
pp weekly_o
