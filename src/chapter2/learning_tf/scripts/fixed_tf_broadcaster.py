#!/usr/bin/env python    
#coding=utf-8
import roslib  
roslib.load_manifest('learning_tf')  
  
import rospy  
import tf  
  
if __name__ == '__main__':  
    rospy.init_node('my_tf_broadcaster')  
    br = tf.TransformBroadcaster()  
    rate = rospy.Rate(10.0)  
    while not rospy.is_shutdown():  
        br.sendTransform((0.0, 2.0, 0.0),  
                         (0.0, 0.0, 0.0, 1.0),  
                         rospy.Time.now(),  
                         "carrot1", 
                         "turtle1") #建立一个新的参考系，父参考系为turtle1，并且距离父参考系2米  
        rate.sleep()