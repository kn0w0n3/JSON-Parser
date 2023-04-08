#ifndef MAINCONTROLLER_H
#define MAINCONTROLLER_H

/*
Author: Jonathan Baird
Date: 05APR2023
Purpose: Test JSON Parsing
Contact:
*/

#include <QWidget>
#include <QObject>
#include <QFile>
#include <QFileInfo>
#include <QFileDialog>
#include <QDebug>

class MainController:  public QWidget{
    Q_OBJECT

public:
    MainController(QWidget *parent = nullptr);

signals:
    void selectedFileDataToQml(QString JSONFileData);

public slots:
    void selectFile(void);

private:
    QString SelectedJSONFile = "";
    QString JSONFileSize = "";
    QString JSONFileName = "";
    QString JSONFilePath = "";
    QString JSONFileFullFilePath = "";
};

#endif // MAINCONTROLLER_H
