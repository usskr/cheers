# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name: "demo", email: "user@demo.com", password: "111111", profile_image: open("./app/assets/images/icon/icon1.jpeg"), introduction: "最近ランニングの楽しさを知りました！\r\n来年は大会に出てみたい！", is_valid: true)
User.create!(name: "tnk0202", email: "user2@demo.com", password: "222222", profile_image: open("./app/assets/images/icon/icon2.JPG"), introduction: "これまでの食生活を猛省し、\r\n減塩にトライしています。\r\n減塩料理のレパートリーを増やしたい！", is_valid: true)
User.create!(name: "3ymdy", email: "user3@demo.com", password: "333333", profile_image: open("./app/assets/images/icon/icon3.JPG"), introduction: "今年中に5kg痩せるために\r\n食生活改善＆ジム通い中。", is_valid: true)
User.create!(name: "satoto", email: "user4@demo.com", password: "444444", profile_image: open("./app/assets/images/icon/icon4.jpeg"), introduction: "最近は早朝テニスにハマっています！\r\n都内でいいコートがあれば教えていただきたいです！", is_valid: true)
User.create!(name: "chikamochi", email: "user5@demo.com", password: "555555", profile_image: open("./app/assets/images/icon/icon5.jpeg"), introduction: "趣味は筋トレ。\r\n仕事前にジムに行ってトレーニングすることが日課です。", is_valid: true)

Spot.create!(address: "日比谷公園")
Spot.create!(address: "代々木公園")
Spot.create!(address: "b-monster 銀座")
Spot.create!(address: "タニタ食堂")
Spot.create!(address: "新宿御苑")

Review.create!(spot_id: 1, user_id: 1, body: "広々としていて、人も多くないので走りやすいです。", rate: 4)
Review.create!(spot_id: 1, user_id: 4, body: "テニスコートを使いました！\r\n都営なので1面1時間1,300円と安いです。", rate: 5)
Review.create!(spot_id: 1, user_id: 3, body: "1.7km、1.4km、1.0kmのランニングコースがあります。", rate: 5)
Review.create!(spot_id: 2, user_id: 5, body: "平坦で走りやすい。\r\n土曜日で人が多かったので、今度は平日に行こうと思います。", rate: 4)
Review.create!(spot_id: 3, user_id: 4, body: "1週間のトライアルをしました！パフォーマーさんによってレッスン内容が全く違うのが面白い！", rate: 4.5)
Review.create!(spot_id: 3, user_id: 1, body: "レッスン後は毎回気分爽快です！", rate: 5)
Review.create!(spot_id: 4, user_id: 3, body: "メニューが日替わりなので飽きない。\r\n塩分量は1食約3gとかなり抑えられているため最初は薄いと感じるかもしれないが、慣れると出汁の味や素材そのものの美味しさを感じられる。", rate: 4)
Review.create!(spot_id: 5, user_id: 2, body: "入園料が500円かかりますが、ボール遊びなどが禁止されているので、落ち着いてヨガをすることができました。", rate: 5)
Review.create!(spot_id: 5, user_id: 4, body: "芝生がふかふかなのでヨガマットなくても大丈夫かも！", rate: 4.5)

Post.create!(user_id: 1, content: "今日は4km走りました！\r\n少しずつ距離を伸ばしていこうと思います！", category: "運動", start_time: "2021-10-03", created_at: "2021-10-03 19:35")
Post.create!(user_id: 2, content: "旅行中は食べ過ぎてしまいがちですが、\r\n山菜そばは罪悪感もなく(笑)、おいしくいただきました！", category: "食事", image: open("./app/assets/images/post/soba.jpg") ,start_time: "2021-10-06", created_at: "2021-10-06 14:03")
Post.create!(user_id: 1, content: "今日は5km走りました〜！\r\nいつもと違う場所でのランニングは新鮮で楽しかったです^^", category: "運動", spot_id: 1, start_time: "2021-10-06", created_at: "2021-10-06 21:50")
Post.create!(user_id: 4, content: "友達と新宿御苑でヨガをしてきました。\r\n久しぶりに行きましたが、こんなに芝生ふかふかだったっけ！？ってびっくりするくらい\r\nいい芝生でした！", category: "運動", spot_id: 5, image: open("./app/assets/images/post/sinjyuku_gyoen.jpeg"), start_time: "2021-10-07", created_at: "2021-10-07 16:17")
Post.create!(user_id: 5, content: "代々木公園でランニングしてみた。\r\n走っていても犬ばかり見てしまう。", category: "運動", spot_id: 2, start_time: "2021-10-10", created_at: "2021-10-10 15:59")
Post.create!(user_id: 5, content: "どうしてもお腹が空いてしまい…\r\nこんな時間に夜食を食べてしまいました", category: "失敗談", start_time: "2021-10-11", created_at: "2021-10-11 01:39")
Post.create!(user_id: 2, content: "暑かったので、トマトとツナと大葉のそうめんに。\r\n麺つゆは気持ち程度、今日も減塩！", category: "食事", image: open("./app/assets/images/post/noodles.jpeg"), start_time: "2021-10-12", created_at: "2021-10-12 13:10")
Post.create!(user_id: 3, content: "タニタ食堂でランチ。\r\nいつもどれだけ塩分を取り過ぎていたのかがよくわかり反省。", category: "食事", spot_id: 4, start_time: "2021-10-13", created_at: "2021-10-13 12:47")
Post.create!(user_id: 2, content: "アクアパッツァを作ってみました！\r\n塩は使っていませんが、鯛とあさりの出汁で十分美味しいです。", category: "食事", image: open("./app/assets/images/post/acqua_pazza.jpeg"), start_time: "2021-10-16", created_at: "2021-10-16 22:42")
Post.create!(user_id: 1, content: "b-monsterおすすめです！\r\nハードですがとっても楽しいです！！", category: "おすすめ", spot_id: 3, start_time: "2021-10-16", created_at: "2021-10-16 23:29")
Post.create!(user_id: 5, content: "ボルダリングに初挑戦。なかなか難しい。", category: "運動", image: open("./app/assets/images/post/bouldering.jpg"), start_time: "2021-10-17", created_at: "2021-10-17 19:08")
Post.create!(user_id: 4, content: "今日も早朝テニスをしてきました！\r\n日焼けの心配もなく、一日を有効に使えるのでおすすめです！", category: "おすすめ", image: open("./app/assets/images/post/tennis_court.jpeg"), start_time: "2021-10-18", created_at: "2021-10-18 05:47")
Post.create!(user_id: 1, content: "8km達成！\r\nまずは3ヶ月後の10kmマラソンの大会にチャレンジしてみようと思います！", category: "運動", spot_id: 2, start_time: "2021-10-19", created_at: "2021-10-19 21:50")

PostComment.create!(post_id: 2, user_id: 4, comment: "確かに山菜そばなら罪悪感ゼロですね！笑")
PostComment.create!(post_id: 3, user_id: 2, comment: "平日に5kmも走るなんて素晴らしいですね！応援してます！")
PostComment.create!(post_id: 4, user_id: 1, comment: "いいですね！ヨガマットいらないくらいですか？")
PostComment.create!(post_id: 4, user_id: 4, comment: "なくても大丈夫でした！タオルくらいでも十分だと思います！")
PostComment.create!(post_id: 4, user_id: 1, comment: "ありがとうございます！今度行ってみます^^")
PostComment.create!(post_id: 5, user_id: 3, comment: "その気持ちよくわかります。")
PostComment.create!(post_id: 9, user_id: 3, comment: "美味しそうですね。今度挑戦してみたいと思います。")
PostComment.create!(post_id: 9, user_id: 1, comment: "おしゃれですね〜！すごい！")
PostComment.create!(post_id: 9, user_id: 4, comment: "綺麗！！レシピ知りたいです！")
PostComment.create!(post_id: 12, user_id: 5, comment: "私も朝ジム派です。気持ちがいいですよね！")

Cheer.create!(post_id: 1, user_id: 4)
Cheer.create!(post_id: 1, user_id: 5)
Cheer.create!(post_id: 3, user_id: 2)
Cheer.create!(post_id: 5, user_id: 3)
Cheer.create!(post_id: 6, user_id: 1)
Cheer.create!(post_id: 6, user_id: 2)
Cheer.create!(post_id: 6, user_id: 3)
Cheer.create!(post_id: 6, user_id: 4)
Cheer.create!(post_id: 7, user_id: 1)
Cheer.create!(post_id: 7, user_id: 3)
Cheer.create!(post_id: 8, user_id: 1)
Cheer.create!(post_id: 8, user_id: 2)
Cheer.create!(post_id: 8, user_id: 5)
Cheer.create!(post_id: 9, user_id: 1)
Cheer.create!(post_id: 9, user_id: 3)
Cheer.create!(post_id: 9, user_id: 4)
Cheer.create!(post_id: 9, user_id: 5)
Cheer.create!(post_id: 10, user_id: 4)
Cheer.create!(post_id: 11, user_id: 1)
Cheer.create!(post_id: 12, user_id: 1)
Cheer.create!(post_id: 12, user_id: 2)

Relationship.create!(follower_id: 1, followed_id: 2)
Relationship.create!(follower_id: 1, followed_id: 4)
Relationship.create!(follower_id: 2, followed_id: 1)
Relationship.create!(follower_id: 2, followed_id: 3)
Relationship.create!(follower_id: 4, followed_id: 1)
Relationship.create!(follower_id: 4, followed_id: 2)
Relationship.create!(follower_id: 4, followed_id: 3)
Relationship.create!(follower_id: 4, followed_id: 5)
Relationship.create!(follower_id: 5, followed_id: 1)

Room.create!

UserRoom.create!(room_id: 1, user_id: 1)
UserRoom.create!(room_id: 1, user_id: 4)

Chat.create!(room_id: 1, user_id: 1, message: "フォローありがとうございます！", created_at: "2021-10-19 19:21")
Chat.create!(room_id: 1, user_id: 4, message: "こちらこそです！今日もランニングされたんですか？", created_at: "2021-10-19 19:42")
Chat.create!(room_id: 1, user_id: 1, message: "はい、走ってきました！", created_at: "2021-10-19 19:46")
Chat.create!(room_id: 1, user_id: 1, message: "今日は代々木公園です！", created_at: "2021-10-19 19:46")
Chat.create!(room_id: 1, user_id: 4, message: "代々木公園！！近くてびっくりしました！", created_at: "2021-10-19 19:49")
Chat.create!(room_id: 1, user_id: 1, message: "近いんですね！よかったら今度一緒に走りませんか？\r\n早朝テニスの話も聞きたいです！", created_at: "2021-10-19 19:51")
Chat.create!(room_id: 1, user_id: 4, message: "ぜひ！！嬉しいです！\r\nよろしくお願いします！", created_at: "2021-10-19 19:52")