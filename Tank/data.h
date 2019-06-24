#ifndef DATA_H
#define DATA_H

#include <QObject>
#include <QJsonObject>

class Data : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int level1highscore READ level1highscore WRITE setLevel1highscore )
    Q_PROPERTY(int level2highscore READ level2highscore WRITE setLevel2highscore )
    Q_PROPERTY(int level3highscore READ level3highscore WRITE setLevel3highscore )
    Q_PROPERTY(int level4highscore READ level4highscore WRITE setLevel4highscore )

    Q_PROPERTY(bool level2 READ level2 WRITE setLevel2 )
    Q_PROPERTY(bool level3 READ level3 WRITE setLevel3 )
    Q_PROPERTY(bool level4 READ level4 WRITE setLevel4 )

public:
    explicit Data(QObject *parent = nullptr);
    Q_INVOKABLE int level1highscore();
    Q_INVOKABLE int level2highscore();
    Q_INVOKABLE int level3highscore();
    Q_INVOKABLE int level4highscore();
    Q_INVOKABLE bool level2();
    Q_INVOKABLE bool level3();
    Q_INVOKABLE bool level4();

    Q_INVOKABLE void setLevel1highscore(int score);
    Q_INVOKABLE void setLevel2highscore(int score);
    Q_INVOKABLE void setLevel3highscore(int score);
    Q_INVOKABLE void setLevel4highscore(int score);
    Q_INVOKABLE void setLevel2(bool level);
    Q_INVOKABLE void setLevel3(bool level);
    Q_INVOKABLE void setLevel4(bool level);

    Q_INVOKABLE void read(const QJsonObject &json);
    Q_INVOKABLE void write(QJsonObject &json) const;
    Q_INVOKABLE void saveData();
    Q_INVOKABLE bool loadData();


protected:
    int m_level1highscore;
    int m_level2highscore;
    int m_level3highscore;
    int m_level4highscore;

    bool m_level2;
    bool m_level3;
    bool m_level4;
};

#endif // DATA_H
