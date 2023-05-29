#ifndef API_H
#define API_H

#include <QObject>
#include <QTimer>

class Api : public QObject
{
    Q_OBJECT
    Q_PROPERTY(bool appLocked READ appLocked WRITE setAppLocked NOTIFY appLockedChanged)
    Q_PROPERTY(QString currentTime READ currentTime WRITE setCurrentTime NOTIFY currentTimeChanged)

public:
    explicit Api(QObject *parent = nullptr);

    bool appLocked() const;

    QString currentTime() const;

public slots:
    void setAppLocked(bool appLocked);
    void setCurrentTime(QString currentTime);
    void currentTimeTimerTimeout();

signals:

    void appLockedChanged(bool appLocked);
    void currentTimeChanged(QString currentTime);

private:
    bool m_appLocked;
    QString m_currentTime;
    QTimer * m_currentTimeTimer;
};

#endif // API_H
