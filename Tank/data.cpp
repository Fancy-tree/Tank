#include "data.h"
#include <QFile>
#include <QJsonDocument>
Data::Data(QObject *parent) : QObject(parent)
{   
    m_level2=false;
    m_level3=false;
    m_level4=false;
    m_level1highscore=0;
    m_level2highscore=0;
    m_level3highscore=0;
    m_level4highscore=0;
}

int Data::level1highscore()
{
    return m_level1highscore;
}

int Data::level2highscore()
{
    return m_level2highscore;
}

int Data::level3highscore()
{
    return m_level3highscore;
}

int Data::level4highscore()
{
    return m_level4highscore;
}

bool Data::level2()
{
    return m_level2;
}

bool Data::level3()
{
    return m_level3;
}

bool Data::level4()
{
    return m_level4;
}

void Data::setLevel1highscore(int score)
{
    if(score>m_level1highscore)
        m_level1highscore=score;
}

void Data::setLevel2highscore(int score)
{
    if(score>m_level2highscore)
        m_level2highscore=score;
}

void Data::setLevel3highscore(int score)
{
    if(score>m_level3highscore)
        m_level3highscore=score;
}

void Data::setLevel4highscore(int score)
{
    if(score>m_level4highscore)
        m_level4highscore=score;
}

void Data::setLevel2(bool level)
{
    m_level2=level;
}

void Data::setLevel3(bool level)
{
    m_level3=level;
}

void Data::setLevel4(bool level)
{
    m_level4=level;
}



void Data::read(const QJsonObject &json)
{
    if (json.contains("level1highscore"))
        m_level1highscore = json["level1highscore"].toInt();

    if (json.contains("level2highscore"))
        m_level2highscore = json["level2highscore"].toInt();

    if (json.contains("level3highscore"))
        m_level3highscore = json["level3highscore"].toInt();

    if (json.contains("level4highscore"))
        m_level4highscore = json["level4highscore"].toInt();

    if(json.contains("level2"))
        m_level2=json["level2"].toBool();
    if(json.contains("level3"))
        m_level3=json["level3"].toBool();
    if(json.contains("level4"))
        m_level4=json["level4"].toBool();

}

void Data::write(QJsonObject &json) const
{
    json["level1highscore"] = m_level1highscore;
    json["level2highscore"] = m_level2highscore;
    json["level3highscore"] = m_level3highscore;
    json["level4highscore"] = m_level4highscore;

    json["level2"]=m_level2;
    json["level3"]=m_level3;
    json["level4"]=m_level4;
}

void Data::saveData()
{
    QFile saveFile(QStringLiteral("save.json"));

    if (!saveFile.open(QIODevice::ReadWrite)) {
        qWarning("Couldn't open save file.");
        return ;
    }

    QJsonObject gameObject;
    write(gameObject);
    QJsonDocument saveDoc(gameObject);
    saveFile.write(saveDoc.toJson());
}

bool Data::loadData()
{
    QFile loadFile(QStringLiteral("save.json"));

    if (!loadFile.open(QIODevice::ReadOnly)) {
        qWarning("Couldn't open save file.");
        return false;
    }

    QByteArray saveData = loadFile.readAll();

    QJsonDocument loadDoc(QJsonDocument::fromJson(saveData));

    read(loadDoc.object());
    return true;
}

