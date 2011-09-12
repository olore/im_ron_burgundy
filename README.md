Using
-----

$ irb
ree-1.8.7-2010.02 > require 'rubygems'
 => true 
ree-1.8.7-2010.02 > require 'im_ron_burgundy'
 => true 
ree-1.8.7-2010.02 > class RonBurgundy
ree-1.8.7-2010.02 ?>  end
 => nil 
ree-1.8.7-2010.02 > RonBurgundy.new.im_ron_burgundy?
 => false 
ree-1.8.7-2010.02 > "foo".im_ron_burgundy?
 => false 
ree-1.8.7-2010.02 > "ron burgundy".im_ron_burgundy?
 => true 
ree-1.8.7-2010.02 > class Person
ree-1.8.7-2010.02 ?>  def name
ree-1.8.7-2010.02 ?>    "Ronald Burgundy"
ree-1.8.7-2010.02 ?>    end
ree-1.8.7-2010.02 ?>  end
 => nil 
ree-1.8.7-2010.02 > Person.new.im_ron_burgundy?
 => true 
