//#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QIcon>

//Galery
#include <QQmlContext>
#include <QSettings>
#include <QQuickStyle>

#include "launcher.h"

//Wordflow
#include <QApplication>
#include <QAction>
#include <QDebug>
#include <QMenu>
#include <QMessageBox>
#include <QQuickStyle>
#include <QQuickWindow>
#include <QSettings>
#include <QStandardPaths>
#include <QSysInfo>
#include <QSystemTrayIcon>
#include <QtQml>
#include <qtwebengineglobal.h>

//pdfjsexample
#include <QDir>




int main(int argc, char *argv[])
{
    QApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QApplication app(argc, argv);
    launcher launch;
//    launcher launch2;

    QIcon icon;
    icon.addFile(QStringLiteral(":/img/UNI-icon.png"), QSize(), QIcon::Normal, QIcon::Off);
    app.setWindowIcon(icon);
    QtWebEngine::initialize();

    QSettings settings;
    QString style = QQuickStyle::name();
    if (!style.isEmpty())
        settings.setValue("style", style);
    else
        QQuickStyle::setStyle(settings.value("style").toString());

    //Not Close APP
//    QApplication::setQuitOnLastWindowClosed(false);


    QQmlApplicationEngine engine;

    //PDF File
    QString pathToPDFjs = QString("file:///%1/%2")
            .arg(QDir::currentPath())
            .arg("3rdParty/pdfjs-1.7.225-dist/web/viewer.html");
    QString gazeboSimu  = QString("file:///%1/%2")
            .arg(QDir::currentPath())
            .arg("WebResources/index.html");
    QString pdfcv    = QString("file:///%1/%2").arg(QDir::currentPath()).arg("pdf/CURRICULUMYESER.pdf");
//    QString pdfcraig = QString("file:///%1/%2").arg(QDir::currentPath()).arg("pdf/Robotica-JohnJCraig.pdf");
//    QString pdfhand  = QString("file:///%1/%2").arg(QDir::currentPath()).arg("pdf/HandbookofRobotics-Springer.pdf");
//    QString pdffund  = QString("file:///%1/%2").arg(QDir::currentPath()).arg("pdf/FundamentosDeRoboticaBarrientos2daEdicion.pdf");
//    QString pdfROSF  = QString("file:///%1/%2").arg(QDir::currentPath()).arg("pdf/ROS_Robot_Programming_EN.pdf");
    QUrl urlcv = QUrl::fromUserInput(pathToPDFjs + QString("?file=") + pdfcv);
//    QUrl urlhn = QUrl::fromUserInput(pathToPDFjs + QString("?file=") + pdfhand);
//    QUrl urlf  = QUrl::fromUserInput(pathToPDFjs + QString("?file=") + pdffund);
//    QUrl urlc  = QUrl::fromUserInput(pathToPDFjs + QString("?file=") + pdfcraig);
//    QUrl urlRF  = QUrl::fromUserInput(pathToPDFjs + QString("?file=") + pdfROSF);
    QUrl urlgz = QUrl::fromUserInput(gazeboSimu);
    engine.rootContext()->setContextProperty("urlcv", urlcv);
    engine.rootContext()->setContextProperty("urlgzsv", urlgz);
//    engine.rootContext()->setContextProperty("urlhn", urlhn);
//    engine.rootContext()->setContextProperty("urlf", urlf);
//    engine.rootContext()->setContextProperty("urlcraig", urlc);
//    engine.rootContext()->setContextProperty("urlROSF", urlRF);



    //PDF File

    //Video File
     QString video1  = QString("file:///%1/%2").arg(QDir::currentPath()).arg("video/KUKA-Robot.mp4");
     QUrl urlv1  = QUrl::fromUserInput(video1);
     engine.rootContext()->setContextProperty("urlv1", urlv1);

//     QString video2  = QString("file:///%1/%2").arg(QDir::currentPath()).arg("video/video2.mp4");
//     QUrl urlv2  = QUrl::fromUserInput(video2);
//     engine.rootContext()->setContextProperty("urlv2", urlv2);

    engine.rootContext()->setContextProperty("availableStyles", QQuickStyle::availableStyles());
    engine.rootContext()->setContextProperty("launcher", &launch);
//    engine.rootContext()->setContextProperty("launcher2", &launch2);



    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    QObject *root = nullptr;

    if (engine.rootObjects().isEmpty())
        return -1;
    else {
      root = engine.rootObjects().first();
      QQuickWindow *qmlWindow = qobject_cast<QQuickWindow *>(root);

      QAction *minimizeAction = new QAction(QObject::tr("Mi&nimize"), qmlWindow);
      root->connect(minimizeAction, &QAction::triggered, qmlWindow,
                    &QQuickWindow::hide);
      QAction *maximizeAction = new QAction(QObject::tr("Ma&ximize"), qmlWindow);
      root->connect(maximizeAction, &QAction::triggered, qmlWindow,
                    &QQuickWindow::showMaximized);
      QAction *restoreAction = new QAction(QObject::tr("&Restore"), qmlWindow);
      root->connect(restoreAction, &QAction::triggered, qmlWindow,
                    &QQuickWindow::showNormal);
      QAction *quitAction = new QAction(QObject::tr("&Quit"), qmlWindow);
      root->connect(quitAction, &QAction::triggered, qApp, &QApplication::quit);

      QMenu *trayIconMenu = new QMenu();
      trayIconMenu->addAction(minimizeAction);
      trayIconMenu->addAction(maximizeAction);
      trayIconMenu->addAction(restoreAction);
      trayIconMenu->addSeparator();
      trayIconMenu->addAction(quitAction);

      QSystemTrayIcon *trayIcon = new QSystemTrayIcon(root);
      trayIcon->setContextMenu(trayIconMenu);
      trayIcon->setIcon(QIcon(":/img/jointIcon.png"));
      trayIcon->show();
    }

    return app.exec();
}
