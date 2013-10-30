#include "register.h"
#include <QApplication>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    DNTRegister w;
    w.show();

    return a.exec();
}
