#include <cstdlib>
#include <geometry_msgs/Twist.h>
#include <ros/ros.h>
#include <tf/transform_listener.h>
#include <turtlesim/Pose.h>
#include <turtlesim/Spawn.h>

geometry_msgs::Twist vel_msg;

void poseCallback(const turtlesim::PoseConstPtr &msg)
{
    ROS_INFO("X:%f  Y:%f", msg->x, msg->y);
}

int main(int argc, char **argv)
{
    // 初始化节点
    ros::init(argc, argv, "hw2");

    ros::NodeHandle node;

    // 通过服务调用，产生第二只乌龟turtle2
    ros::service::waitForService("spawn");
    ros::ServiceClient add_turtle =
        node.serviceClient<turtlesim::Spawn>("spawn");
    turtlesim::Spawn srv;
    srv.request.x = 5.0;
    srv.request.y = 5.0;
    srv.request.name = "turtle2";
    add_turtle.call(srv);
    ROS_INFO("the turtle2 has been spawn!!");

    // 定义turtle2的速度控制发布器
    ros::Publisher turtle_vel = node.advertise<geometry_msgs::Twist>("turtle2/cmd_vel", 10);

    ros::Subscriber sub = node.subscribe("/turtle2/pose", 10, &poseCallback);

    ros::Rate rate(10.0);

    while (node.ok())
    {
        vel_msg.angular.z = 5;
        vel_msg.linear.x = 0;
        vel_msg.linear.y = 0;

        //turtle_vel.publish(vel_msg);

        ros::spinOnce(); //到这一步时，执行一次回调函数
        rate.sleep();
    }
    return 0;
};
