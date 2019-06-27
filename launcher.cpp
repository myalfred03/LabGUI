#include "launcher.h"
#include <QDebug>


launcher::launcher(QObject *parent) :
    QObject(parent),
        process_roscore(new QProcess(this)),
        process_rvizglabre(new QProcess(this)),
        process_robot_editor(new QProcess(this)),
        process_interpreter_xyz(new QProcess(this)),
        process_interpreter_gui(new QProcess(this)),
        process_load_reachability(new QProcess(this)),
        gazebo_launch(new QProcess(this)),
      arduino_launch(new QProcess(this))

{
    process_roscore->start("bash",QStringList() << "-i" << "-c" << \
                     "roscore");

}

launcher::~launcher(){
    process_roscore->kill();
    process_robot_editor->kill();
    process_interpreter_gui->kill();
    process_rvizglabre->kill();
    process_interpreter_xyz->kill();
    process_load_reachability->kill();
    gazebo_launch->kill();
    arduino_launch->kill();
}

void launcher::launch()
{

    process_robot_editor->kill();
    process_interpreter_gui->kill();
    process_rvizglabre->kill();
    process_interpreter_xyz->kill();
    process_load_reachability->kill();
    gazebo_launch->kill();
    arduino_launch->kill();

    process_rvizglabre =        new QProcess();
    process_interpreter_xyz =   new QProcess();
    process_load_reachability = new QProcess();

    process_rvizglabre->start("bash",QStringList() << "-i" << "-c" << \
                     "rosrun rvizglabre rvizglabre");

    process_interpreter_xyz->start("bash",QStringList() << "-i" << "-c" << \
                     "rosrun interpreter_xyz_rpy interpreter_xyz_rpy");

    process_load_reachability->start("bash",QStringList() << "-i" << "-c" << \
                     "rosrun map_creator load_reachability_map");
    arduino_launch->start("bash",QStringList() << "-i" << "-c" << \
                          "rosrun rosserial_python serial_node.py /dev/ttyUSB0");


//    m_process->start("gnome-terminal --geometry=0x0+0+0 --command \"roslaunch carmen_sim navigation.launch\" ");
//                "gnome-terminal --geometry=50x10-0-10 -x bash -c \"roslaunch rvizglabre launchlab.launch\" ");



////    system("gnome-terminal -x bash -c 'source ~/ros_qtc_plugin/devel/setup.bash;"
////                "roslaunch rvizglabre launchlab.launch; limited:=true'&");
//    system("gnome-terminal --geometry=50x10-0-10 -x bash -c \"roscore\" ");
}

void launcher::launch2()
{
    process_rvizglabre->kill();
    process_interpreter_xyz->kill();
    process_interpreter_gui->kill();
    process_load_reachability->kill();
    process_robot_editor->kill();
    gazebo_launch->kill();
    arduino_launch->kill();


    process_robot_editor = new QProcess();
    process_robot_editor->start("bash",QStringList() << "-i" << "-c" << \
                     "rosrun robot_editor robot_editor");




//        int rosLaunchPid_;
//        rosLaunchPid_ = m_process->pid();

//        qDebug() << "processId = " << m_process->processId();
//        qDebug() << "PID =" << rosLaunchPid_;

//        //        int bias = 4;
//        QProcess* killRosProcess = new QProcess;
//        QString correctPid, cmd;

//        cmd = "gnome-terminal --geometry=0x0+0+0 -x kill " + correctPid.setNum(rosLaunchPid_ /*+ bias*/);
//        killRosProcess->start(cmd);
//        qDebug() << "Kill the ROS launch process!";


//    m_process->terminate();
//    m_process->deleteLater();
//    m_process->kill();
//     system("killall -g roslaunch rvizglabre launchlab.launch");

}

void launcher::launch3()
{
    process_robot_editor->kill();
    process_interpreter_gui->kill();
    process_rvizglabre->kill();
    process_interpreter_xyz->kill();
    process_load_reachability->kill();
    gazebo_launch->kill();
    arduino_launch->kill();


    process_rvizglabre = new QProcess();
    process_interpreter_xyz = new QProcess();
    process_interpreter_gui = new QProcess();
    process_load_reachability = new QProcess();

    process_rvizglabre->start("bash",QStringList() << "-i" << "-c" << \
                     "rosrun rvizglabre rvizglabre");

    process_interpreter_gui->start("bash",QStringList() << "-i" << "-c" << \
                     "rosrun interpreter_gui interpreter_gui");

    process_interpreter_xyz->start("bash",QStringList() << "-i" << "-c" << \
                     "rosrun interpreter_xyz_rpy interpreter_xyz_rpy");

    process_load_reachability->start("bash",QStringList() << "-i" << "-c" << \
                     "rosrun map_creator load_reachability_map");

    arduino_launch->start("bash",QStringList() << "-i" << "-c" << \
                          "rosrun rosserial_python serial_node.py /dev/ttyUSB0");
//    m_process->start("gnome-terminal --geometry=0x0+0+0 --command \"roslaunch carmen_sim navigation.launch\" ");
//                "gnome-terminal --geometry=50x10-0-10 -x bash -c \"roslaunch rvizglabre launchlab.launch\" ");


////    system("gnome-terminal -x bash -c 'source ~/ros_qtc_plugin/devel/setup.bash;"
////                "roslaunch rvizglabre launchlab.launch; limited:=true'&");
//    system("gnome-terminal --geometry=50x10-0-10 -x bash -c \"roscore\" ");
}

void launcher::launch4()
{
    process_robot_editor->kill();
    process_interpreter_gui->kill();
    process_rvizglabre->kill();
    process_interpreter_xyz->kill();
    process_load_reachability->kill();
    gazebo_launch->kill();


    gazebo_launch = new QProcess();

    gazebo_launch->start("bash",QStringList() << "-i" << "-c" << \
                         "roslaunch robot_gz robotgzE.launch");

//    gazebo_launch->start( "gnome-terminal --geometry=50x10-0-10 -x bash -c \"roslaunch rvizglabre launchlab.launch\" ");
//    gazebo_launch->start("gnome-terminal --geometry=0x0+0+0 --command",QStringList()<<"roslaunch robot_gz robotgzE.launch\ ");

 }




