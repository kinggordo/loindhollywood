class MoveJointbToJoint < ActiveRecord::Migration


  def self.timetohoursandminutes(thetime)
    if !thetime.nil?
      hourstring = "%02d" % thetime.hour
      minutestring = "%02d" % thetime.min
      "#{hourstring}:#{minutestring}"
    else
      ""
    end
  end


  def self.up
    say_with_time "moving jointb into joint" do
      Jointb.all.each do |j|
        Joint.create!(  :film_id => j.film_id,
                        :ville_id => j.ville_id,
                        :salle_id => j.salle_id,
                        :titreoriginal => j.titreoriginal,
                        :titreoriginalb => j.titreoriginalb,
                        :genre => j.genre,
                        :date => j.date,
                        :price => j.price,
                        :show => j.show,
                        :start_date => j.start_date,
                        :end_date => j.end_date,
                        :schedule => j.schedule,
                        :onstage => j.onstage,
                        :episode => j.episode,
                        :audience => j.audience,
                        :source => j.source,
                        :comment => j.comment,
                        :created_at => j.created_at,
                        :updated_at => j.updated_at,
                        :day => j.day,
                        :daybis => j.daybis,
                        :holydays => j.holydays,
                        :dayextra => j.dayextra,
                        :toextra => j.toextra,
                        :timeextrabis => j.timeextrabis,
                        :currency_id => j.currency_id,
                        :number => j.number,
                        :time => timetohoursandminutes(j.time),
                        :timebis => timetohoursandminutes(j.timebis),
                        :timeter => timetohoursandminutes(j.timeter),
                        :timefour => timetohoursandminutes(j.timefour) )
                        MISSING THE MIGRATION OF THE AND OR TO
      end
    end   
  end

  def self.down
  end
end
