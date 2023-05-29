#include "api.h"
#include <QDateTime>

Api::Api(QObject *parent)
    : QObject{parent}
    , m_appLocked(true)
{
    m_currentTimeTimer = new QTimer(this);
    m_currentTimeTimer->setInterval(500);
    m_currentTimeTimer->setSingleShot(true);
    connect(m_currentTimeTimer, &QTimer::timeout, this, &Api::currentTimeTimerTimeout);

    currentTimeTimerTimeout();
}

bool Api::appLocked() const
{
    return m_appLocked;
}

QString Api::currentTime() const
{
    return m_currentTime;
}

void Api::setAppLocked(bool appLocked)
{
    if (m_appLocked == appLocked)
        return;

    m_appLocked = appLocked;
    emit appLockedChanged(m_appLocked);
}

void Api::setCurrentTime(QString currentTime)
{
    if (m_currentTime == currentTime)
        return;

    m_currentTime = currentTime;
    emit currentTimeChanged(m_currentTime);
}

void Api::currentTimeTimerTimeout() {
    QDateTime dateTime;
    QString currentTime = dateTime.currentDateTime().toString("h:m ap");

    setCurrentTime(currentTime);

    //start the timer
    m_currentTimeTimer->start();
}
