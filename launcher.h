#ifndef LAUNCHER_H
#define LAUNCHER_H

#include <QObject>
#include <QProcess>

class launcher : public QObject
{
    Q_OBJECT
public:
    launcher(QObject *parent = nullptr);
    ~launcher();

    Q_INVOKABLE void launch();
    Q_INVOKABLE void launch2();
    Q_INVOKABLE void launch3();
    Q_INVOKABLE void launch4();

private:
    QProcess *process_roscore;
    QProcess *process_rvizglabre;
    QProcess *process_robot_editor;
    QProcess *process_interpreter_xyz;
    QProcess *process_interpreter_gui;
    QProcess *process_load_reachability;
    QProcess *gazebo_launch;
    QProcess *arduino_launch;




};

#endif // LAUNCHER_H
