# Meetupアクティブユーザテーブルの作成

- ミートアップのアクティブユーザの定義は？
  - project-index(meetup)のPVを一週間前に行っているかどうか
  - indexを見たIDすべてを日にち毎に出すのはできそう(礼さんのやつ)
    - DATE_TRUNCで週ごとに集計する
    - arrayをUDFでバラバラにする
    - week(x)のアクティブユーザ:
        \
        ON week(x)のuser_id = week(x-1)のuser_id
    - かなり重くなりそう
- 20181101 - 20190301 でのPV数をアカウント毎にGROUP BYする
  - アカウント毎にランク付けする
    - decile?
  - user_id, rankのリストが完成

# candidaciesとLEFT JOIN

- 応募ごとのユーザのランクがわかる
- cand.id: Not Null = アクティブユーザの応募
week, user_id_array



# meetup案件ごとの応募数を出す
- projectsに応募案件が入ってる
- candidaciesにはシゴトとMeetup両方の応募者が入ってる
- LEFT JOIN



- 検索ワードの比較(シゴトとのライトさの違い)
- 検索結果に対してのCVR(show,cand)

- 検索は使われてないから, どういうのをPVしてるか深掘りする？

- index,show,candidateを全部比較する


数値で比較するほうがわかりやすい
なぜ投稿



