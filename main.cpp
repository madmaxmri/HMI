#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QtQml>
#include <QtVirtualKeyboard>

int main(int argc, char *argv[])
{
    qputenv("QT_IM_MODULE", QByteArray("qtvirtualkeyboard"));

    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;

    const QUrl requesterUrl(QStringLiteral("qrc:/qt/qml/HMI/Components/Requester.qml"));
    qmlRegisterSingletonType(requesterUrl, "HMI", 1, 0, "Requester");

    const QUrl url(QStringLiteral("qrc:/qt/qml/HMI/Main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
                         if (!obj && url == objUrl)
                             QCoreApplication::exit(-1);
                     }, Qt::QueuedConnection);

    engine.load(url);
    return app.exec();
}

