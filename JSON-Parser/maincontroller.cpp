#include "maincontroller.h"

MainController::MainController(QWidget *parent) :QWidget(parent){

}

//Select the JSON file to parse
void MainController::selectFile(){
    SelectedJSONFile = QFileDialog::getOpenFileName(Q_NULLPTR, tr("Select File"), "/home");

    //Get info about the selected file
    QFileInfo fileInfo(SelectedJSONFile);

    //Get the selected file name and send it to QML using signals and slots
    JSONFileName = fileInfo.fileName().trimmed();
    qDebug() << "The file name is: " << JSONFileName;
    emit selectedFileDataToQml("File Name: " + JSONFileName);

    //Get the path of the selected file and send it to QML using signals and slots
    JSONFilePath = fileInfo.filePath();
    emit selectedFileDataToQml("File Path: " + JSONFilePath);
}
