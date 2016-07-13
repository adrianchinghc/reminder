require 'lita-schedule'

module Lita
  module Schedules
    class Reminder < Schedule

      # cron('15 18 * * 1-5 Asia/Kuala_Lumpur', :standup_reminder)
      # def standup_reminder
      #   robot.persisted_rooms.each do |room|
      #     target = Source.new(room: Room.new("#{room}@conf.hipchat.com"))
      #     robot.send_message(target, "It's Standup Time!")
      #     robot.send_message(target, "Use command: /standup to record your standup")
      #   end
      # end
      cron('* * * * * Asia/Kuala_Lumpur', :every_minutes_job1)
      def every_minutes_job1
        target = Source.new(room: Room.new('348418_slim_shady@conf.hipchat.com'))
        robot.send_message(target, Time.now.to_s)
      end

      every('1m', :every_minutes_job2)
      def every_minutes_job2
        target = Source.new(room: Room.new('348418_slim_shady@conf.hipchat.com'))
        robot.send_message(target, Time.now.to_s)
      end
    end
    Lita.register_schedule(Reminder)
  end
end
