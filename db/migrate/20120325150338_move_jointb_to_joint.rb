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

  def self.andortotonewcolumn(andvalue, tovalue)
    if andvalue
      1
    elsif tovalue
      2
    else
      0
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
                        :timefour => timetohoursandminutes(j.timefour),
                        :and_or_to => andortotonewcolumn( j.and, j.to),
                        :and_or_to_bis => andortotonewcolumn( j.andbis, j.tobis),
                        :and_or_to_ter => andortotonewcolumn( j.andter, j.toter) )
        j.onstageattribs.each do |onstage|
          Onstageattrib.create!(  :name => onstage.name,
                                  :film_id => onstage.film_id,
                                  :joint_id => onstage.jointb_id )
        end
        j.shortmovattribs.each do |shortmove|
          Shortmovattrib.create!( :name => shortmove.name,
                                  :based_on => shortmove.based_on,
                                  :film_id => shortmove.film_id,
                                  :joint_id => shortmove.jointb_id)
        end
        j.featuremovattribs.each do |featured|
          Featuremovattrib.create!( :name => featured.name,
                                    :film_id => featured.film_id,
                                    :joint_id => featured.jointb_id )
        end
      end
    end   
  end
  
  def self.down
  end
end
