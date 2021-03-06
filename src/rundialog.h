#ifndef RUNDIALOG_H
#define RUNDIALOG_H

#include <QAbstractButton>
#include <QDialog>
#include <QTimer>

#include <QFutureWatcher>

namespace Ui {
class RunDialog;
}

class RunDialog : public QDialog
{
    Q_OBJECT

public:
    explicit RunDialog(QWidget *parent = 0);
    ~RunDialog();

public slots:
    int exec() override;

private slots:
    void on_buttonBox_clicked(QAbstractButton* button);
    void finished();
    void updateText();

private:
    int runtime = 0;
    QFuture<int> startSimulation();

    Ui::RunDialog *ui;

    QFutureWatcher<int> m_runWatcher;
    QTimer m_timer;
};

#endif // RUNDIALOG_H
