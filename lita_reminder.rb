require 'lita-schedule'

module Lita
  module Schedules
    class Reminder < Schedule

      cron('48 18 * * 1-5 Asia/Kuala_Lumpur', :standup_reminder)
      def standup_reminder
        robot.persisted_rooms.each do |room|
          target = Source.new(room: Room.new("#{room}@conf.hipchat.com"))
          robot.send_message(target, "It's Standup Time!")
          robot.send_message(target, "Use command: /standup to record your standup")
        end
      end
    end
    Lita.register_schedule(Reminder)
  end
end
