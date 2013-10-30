#ifndef REGISTER_H
#define REGISTER_H

#include <QDialog>
#include "rsa.h"

namespace Ui {
class RegisterClass;
}

class DNTRegister : public QDialog
{
    Q_OBJECT
private:
    Ui::RegisterClass *_ui;
    CryptoPP::InvertibleRSAFunction _params;
public:
    explicit DNTRegister(QWidget *parent = 0);
    ~DNTRegister();
private slots:
    void onMake();

};

#endif // REGISTER_H
