#include <geometry_msgs/PointStamped.h>
#include <ros/ros.h>
#include <tf/transform_listener.h>

//我们将创建一个函数，给定一个TransformListener，在“base_laser”坐标系中取一点，并将其转换为“base_link”坐标系。
// 这个函数将作为在我们程序的main()中创建的ros::Timer的回调，并且每秒都会触发。
void transformPoint(const tf::TransformListener &listener)
{
    //we'll create a point in the base_laser frame that we'd like to transform to the base_link frame
    geometry_msgs::PointStamped laser_point;
    laser_point.header.frame_id = "laser";

    //we'll just use the most recent transform available for our simple example
    laser_point.header.stamp = ros::Time(); //时间戳

    //just an arbitrary point in space
    laser_point.point.x = 1.0;
    laser_point.point.y = 0.2;
    laser_point.point.z = 0.0;

    try
    {
        geometry_msgs::PointStamped base_point;
        listener.transformPoint("turtle2", laser_point, base_point); //坐标中的点的位置变换
        ROS_INFO("base_laser: (%.2f, %.2f. %.2f) -----> base_turtle1: (%.2f, %.2f, %.2f) at time %.2f",
                 laser_point.point.x, laser_point.point.y, laser_point.point.z,
                 base_point.point.x, base_point.point.y, base_point.point.z, base_point.header.stamp.toSec());
    }
    catch (tf::TransformException &ex)
    {
        ROS_ERROR("Received an exception trying to transform a point from \"base_laser\" to \"base_link\": %s", ex.what());
    }
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "robot_tf_listener");
    ros::NodeHandle n;

    //我们需要创建一个tf::TransformListener。一个TransformListener对象自动订阅了ROS变换消息主题和管理所有将在网络中广播的变换数据。
    tf::TransformListener listener(ros::Duration(10));

    //we'll transform a point once every second
    ros::Timer timer = n.createTimer(ros::Duration(1.0), boost::bind(&transformPoint, boost::ref(listener)));

    ros::spin();
}