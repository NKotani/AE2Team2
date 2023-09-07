
-- +migrate Up
DROP TABLE IF EXISTS `recipes`;
CREATE TABLE recipes (
    id int PRIMARY KEY AUTO_INCREMENT,
    recipeRank int,
    recipeTitle varchar(255),
    recipeUrl varchar(255),
    foodImageUrl varchar(255),
    recipeCost varchar(128),
    recipeIndication varchar(128),
    categoryId varchar(16),
    categoryName varchar(128),
    serving_size int,
    ingredients JSON,
    recipe JSON,
    created_at datetime DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
    updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時'
);

INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "2", "子供が喜ぶウインナーとジャガイモのチーズ焼き", "https://recipe.rakuten.co.jp/recipe/1900012525/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/79b725a01f97749ed1b1fe6915b1aa673beb2e61.18.2.3.2.jpg", "100円以下", 
        "約10分", "10-66-50", 
        "ソーセージ・ウインナー", "4", 
        '[{"name": "ウインナー", "quantity": "5", "unit": "本"}, {"name": "ジャガイモ", "quantity": "2", "unit": "中"}, {"name": "玉ねぎ", "quantity": "0", "unit": "中半分"}, {"name": "塩", "quantity": "0", "unit": "ひとつまみ"}, {"name": "こしょう", "quantity": "2", "unit": "ふりぐらい"}, {"name": "チーズ", "quantity": "4", "unit": "g"}]', '["ジャガイモは5mm角の3cmぐらいに切り、玉ねぎはうすぎり、ウインナーはジャガイモと大体同じ大きさに切る。", "じゃがいもをレンジで柔らかくする。", "ウインナーと玉ねぎを最初にフライパンに入れ中火で炒め、その後ジャガイモをいれて水分をとばし、塩こしょうをする。", "耐熱皿かアルミホイルにのせて、その上にチーズをのせる。", "トースター、グリルなどで５分ほど焼き、チーズがとけて焼き目がついたらできあがり♡"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "4", "簡単節約！ウインナーとキャベツのガリバタ炒め", "https://recipe.rakuten.co.jp/recipe/1920015784/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/ce13e10d439507c34d8aa7e40a8cca52e2d8e611.23.2.3.2.jpg", "300円前後", 
        "約10分", "10-66-50", 
        "ソーセージ・ウインナー", "2", 
        '[{"name": "ウインナー", "quantity": "4", "unit": "本"}, {"name": "キャベツ", "quantity": "250", "unit": "g"}, {"name": "にんにく", "quantity": "1", "unit": "片"}, {"name": "バター", "quantity": "10", "unit": "g"}, {"name": "塩こしょう", "quantity": "0", "unit": "少々"}]', '["ウインナーは斜め切りに、キャベツは一口大に切る。にんにくはみじん切りにする。", "熱したフライパンにサラダ油をひき、ウインナーとキャベツ、にんにくを加え炒める。火が通ったらバターを落とし、塩こしょうを振ってざっくり炒めてできあがり。"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "1", "塩麹で作る☆鶏むね肉で、高級ハムの美味しさ。", "https://recipe.rakuten.co.jp/recipe/1070007321/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/4f4cea33b2aad9aece35a95997f6c31d8644d2b3.08.2.3.2.jpg", "300円前後", 
        "1時間以上", "10-67-1492", 
        "鶏ハム", "2", 
        '[{"name": "鶏むね肉", "quantity": "1", "unit": "枚"}, {"name": "塩麹", "quantity": "1", "unit": "お玉"}, {"name": "油", "quantity": "0", "unit": "適量"}]', '["鶏胸肉をタッパに入れて、塩麹を入れて半日〜1日漬け込みます。途中、裏返します。", "熱したフライパンに油を入れて、中火にします。塩麹を手で軽く拭って、鶏肉を皮面から入れます。お肉を入れたら、弱火にします。蓋をして蒸し焼きにします。", "焼き色がついたら、裏返します。蓋をして蒸し焼きにします。ずっと弱火で。", "斜めに切り、盛りつけます。出来上がり〜！", "アップの写真です。中はしっとり柔らかく、皮面はジューシーです。", "塩分が丁度良い味になります。参考にどうぞ★簡単だよ！塩麹作りの全工程。 レシピID：1070007237参照にして下さい。", "2/15更新、｢塩麹特集｣で取り上げられました。漬け込むだけで簡単で美味しいので、是非作ってみて下さいね。味付けがしっかりしているので、冷めたらお弁当にもおすすめです。", "2,012年、年間人気レシピランキングで6位に入賞したレシピです♪みなさんのおかげです。本当に、いつもありがとうございます (^_^)"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "2", "ゴーヤのチーズオムレツ", "https://recipe.rakuten.co.jp/recipe/1340029805/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/77d2291b485af399be3b155c00b54ffc3061bfc9.23.9.3.3.jpg", "300円前後", 
        "約10分", "10-68-49", 
        "ベーコン", "4", 
        '[{"name": "ゴーヤ", "quantity": "1", "unit": "本"}, {"name": "卵", "quantity": "2", "unit": "個"}, {"name": "★ピザ用チーズ", "quantity": "4", "unit": "大"}, {"name": "★ベーコン", "quantity": "2", "unit": "枚(ツナ缶やウインナーでも◎)"}, {"name": "★塩コショウ", "quantity": "0", "unit": "少々"}, {"name": "お好みでケチャップ", "quantity": "0", "unit": "適量"}]', '["ゴーヤは1㎝の輪切りにし、スプーンで種とワタを取り、耐熱皿に並べラップをし600ｗのレンジで3分加熱する。", "ベーコンはみじん切りにする。ボウルに卵を割り入れ、★を加えてよく混ぜる。", "フライパンに油を熱し、ゴーヤを並べてスプーンを使って②を流し入れる。焼き色がついたらひっくり返して裏面も焼いたら完成。", "お好みでケチャップをつけて食べてください♡"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "4", "【超簡単　豪華】フライパンだけで絶品ラムチョップ", "https://recipe.rakuten.co.jp/recipe/1220010619/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/290c34329ec32a5019e71c5e2e7e9f5f1123db7c.86.2.3.2.jpg", "1,000円前後", 
        "約15分", "10-69-45", 
        "ラムチョップ・ラム肉", "3", 
        '[{"name": "骨付きラム肉", "quantity": "6", "unit": "本"}, {"name": "オリーブオイル", "quantity": "1", "unit": "小さじ"}, {"name": "ニンニク", "quantity": "1", "unit": "片"}, {"name": "ミニトマト", "quantity": "3", "unit": "個"}, {"name": "イタリアンパセリ（飾り用）", "quantity": "3", "unit": "，"}, {"name": "ミックスハーブ", "quantity": "1", "unit": "大さじ"}, {"name": "エリンギ", "quantity": "1", "unit": "本"}]', '["お肉は30分前には冷蔵庫から出して、常温に戻しておく。（調理時間外）", "フライパンにオイルを垂らし、薄切りにしたニンニクを並べ入れて弱火にかける。", "ビニール袋にラムとミックスハーブを小さじ２入れて全体にまぶす。※塩の入っていないものなら、塩は小さじ１弱", "◆ミックスハーブ◆市販のもので可手作りするならオレガノ、バジル、パセリ、マジョラムなどを計小さじ１～２黒コショウ、塩を各小さじ１パプリカ、ナツメグなど少々", "フライパンのガーリックを横にずらして、ラム肉の背の脂の部分を倒れないよう立てて中火で１～２分焼く。", "肉の厚さが2cm未満なら、消えるギリギリというくらい、弱いとろ火で片面5分ずつ焼く。ニンニクは肉の上に置いておく。エリンギを手で割いてフライパンに入れる。", "再び脂の部分を焼く為、立てたら強火に変えて油をカリッと焼く。エリンギにも焦げ目をつける。", "お皿の真ん中にエリンギを盛り、写真のように骨を組むようにラムチョップを乗せる。残りのミックスハーブを全体にかける。周囲に4つに切ったミニトマトとイタリアンパセリを飾って完成。"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "4", "＜定番シリーズ＞ご飯が進む！とろ～り牛すじ煮込み", "https://recipe.rakuten.co.jp/recipe/1260005620/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/caacb293d43ef9f57628370bd7457b1356e96810.04.2.3.2.jpg", "1,000円前後", 
        "1時間以上", "10-69-46", 
        "ホルモン・レバー", "6", 
        '[{"name": "牛すじ", "quantity": "6", "unit": "g"}, {"name": "醤油、砂糖", "quantity": "1", "unit": "各大さじ"}, {"name": "酒", "quantity": "8", "unit": "大さじ"}, {"name": "水", "quantity": "8", "unit": "cc"}, {"name": "生姜チューブ", "quantity": "2", "unit": "小さじ"}]', '["牛すじを水から茹で、沸騰したらお湯を捨てる。この作業を2、3回繰り返す。※アクの少ない牛すじなら1回でも十分です。", "※「1」の作業を数回すると沸騰してもアクが出なくなります。画像で3回目の状態です。", "牛すじを食べやすい大きさに切る。", "材料を全部鍋に入れ、弱火～中火（かすかに沸騰する程度）で1時間くらい煮込む。※このままでも食べれますが、ヘルシーにしたいかたは「5」以降の作業をオススメします。", "ボウルに移し、粗熱が取れたらラップをして冷蔵庫で冷やす。※ここからの作業は必須じゃないのでヘルシーにしたい方にオススメします。", "しっかり冷えて脂が固まったら、表面の塊を取り除く。※一晩冷やすとガッチリ固まるので取り除きやすくなります。", "脂を取り除いたらボウルの中身を鍋に入れ、お好みの状態まで煮込んだら完成。※私は煮汁がかなり減るまで煮込んで濃い味付けにします。", "※牛すじだけで作るときもありますが、板蒟蒻を食べやすい大きさに切って加えるときもあります。加えるときは「4」工程で30分くらい煮込んだあとに蒟蒻追加して残り30分煮込みます。"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "4", "簡単本格的チャーシュー風スペアリブ", "https://recipe.rakuten.co.jp/recipe/1550003302/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/72cd41326efc721476bdd6fffd11288f32524a6f.86.2.3.2.jpg", "指定なし", 
        "指定なし", "10-69-460", 
        "猪肉", "3", 
        '[{"name": "スペアリブ", "quantity": "1", "unit": "本ぐらい"}, {"name": "チャーシュー醤材料", "quantity": "0", "unit": 0}, {"name": "ローズマリー", "quantity": "2", "unit": "枝"}, {"name": "にんにくおろし", "quantity": "1", "unit": "小さじ"}, {"name": "しょうがおろし", "quantity": "1", "unit": "小さじ"}, {"name": "はちみつ", "quantity": "5", "unit": "g"}, {"name": "中華甘みそ　甜面醤テンメンジャン", "quantity": "1", "unit": "小さじ"}, {"name": "オイスターソース", "quantity": "1", "unit": "大さじ"}, {"name": "醤油", "quantity": "2", "unit": "大さじ"}, {"name": "みりん", "quantity": "2", "unit": "大さじ"}, {"name": "お酒", "quantity": "1", "unit": "大さじ"}, {"name": "鷹の爪（八角）", "quantity": "1", "unit": "個"}, {"name": "五香粉（ウーシャンフェン）", "quantity": "0", "unit": "少々"}, {"name": "黒コショウ", "quantity": "0", "unit": "少々"}]', '["チャーシュー醤材料ずべてお揃え、中火でまぜながら、煮立てます。一度沸騰してから、火からおろし、", "粗熱がなくなったら、スペアリブにかけ、半日ぐらい漬け込む。", "200℃予熱してから１８０℃まで下がって１５分焼きます。", "いったん出して、裏にして、残ったチャーシュー醤をスペアリブにかけてから、また１８０℃で１５分焼く、", "途中見ながら、ちょっと焦げつけたら、完成です！", "このチャーシュー醤でチャーシューも作れます！いろいろチャレンジしてみてください。おいしいです！"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "2", "野菜たっぷり！！鮭のちゃんちゃん焼き", "https://recipe.rakuten.co.jp/recipe/1740006209/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/24435dd2f2e8891b6ccf1f055ce39d7bc8f8c0e3.68.2.3.2.jpg", "500円前後", 
        "約30分", "11-70-55", 
        "鮭全般", "2", 
        '[{"name": "鮭切り身", "quantity": "2", "unit": "切れ"}, {"name": "キャベツ", "quantity": "0", "unit": "半分"}, {"name": "玉ねぎ", "quantity": "1", "unit": "個"}, {"name": "人参", "quantity": "0", "unit": "半分"}, {"name": "しめじ", "quantity": "0", "unit": "半分"}, {"name": "●味噌", "quantity": "3", "unit": "大さじ"}, {"name": "●酒・みりん", "quantity": "2", "unit": "大さじ"}, {"name": "●砂糖", "quantity": "0", "unit": "大さじ半分"}, {"name": "●醤油", "quantity": "1", "unit": "小さじ"}, {"name": "バター", "quantity": "1", "unit": "g"}]', '["鮭は塩コショウで下味をつけ、骨を抜いておく。", "キャベツは大きめのざく切り、玉ねぎはくし切り、人参は短冊切り。しめじはほぐす。", "●を合わせて、タレをつくる", "フライパンにキャベツをしき、その上に他の野菜を散らし、最後に鮭をのせる。", "４に３のタレを回し入れ、蓋をして中火で２０分ぐらい蒸す。", "最後にバターをのせ、２〜３分蒸す"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "3", "レンジde簡単ホワイトソース☆鮭のクリームパスタ", "https://recipe.rakuten.co.jp/recipe/1910001198/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/acfb938e7a9cf05f19bfa71bb9f4221c05f08ffd.82.2.3.2.jpg", "300円前後", 
        "約15分", "11-70-2017", 
        "塩鮭", "1", 
        '[{"name": "パスタ（乾麺）", "quantity": "1", "unit": "グラム"}, {"name": "焼塩鮭", "quantity": "1", "unit": "切れ"}, {"name": "ほうれん草", "quantity": "1", "unit": "株"}, {"name": "バター", "quantity": "1", "unit": "大さじ"}, {"name": "小麦粉", "quantity": "1", "unit": "大さじ"}, {"name": "牛乳", "quantity": "1", "unit": "cc"}, {"name": "塩コショウ", "quantity": "0", "unit": "適宜"}]', '["焼塩鮭は骨と皮を取ってほぐしておきます。ほうれん草は一口大にカット。", "パスタをゆで始めます。その間にソースの準備。", "耐熱容器にバターと小麦粉を入れてレンジ600Wで1分加熱してよく混ぜます。", "牛乳半量（50cc）を少しずつ加えて混ぜ、再びレンジで1分加熱。", "残りの牛乳（50cc）も同様にし、レンジで1分加熱。塩コショウで調味。", "パスタがゆであがる1分前にほうれん草を投入し、一緒にゆでてしまいます。", "ゆであがったパスタとほうれん草、塩鮭、クリームソース、ゆで汁少々を混ぜてできあがり。"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "1", "圧力鍋で時短！骨までホロホロいわしの梅煮♡", "https://recipe.rakuten.co.jp/recipe/1220011644/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/1d39f29ef747475edc297a4889d7004506a097a5.33.2.3.2.jpg", "300円前後", 
        "約30分", "11-71-54", 
        "いわし", "3", 
        '[{"name": "いわし", "quantity": "8", "unit": "尾"}, {"name": "梅干し（今回はちみつ漬け）", "quantity": "2", "unit": "個"}, {"name": "酒", "quantity": "2", "unit": "大さじ"}, {"name": "三温糖", "quantity": "2", "unit": "大さじ"}, {"name": "醤油", "quantity": "2", "unit": "大さじ"}, {"name": "みりん", "quantity": "1", "unit": "大さじ"}, {"name": "水", "quantity": "1", "unit": "カップ"}]', '["鰯は頭と腹を取って、流水でキレイに洗いましょう！お腹の中の黒い膜と血合いはしっかりとります！", "お鍋に鰯と梅干しを並べます。器に酒→三温糖→醤油→みりんを合わせて鰯のお鍋に入れます！鰯がつかるギリギリの高さ位までお水をいれて圧力鍋の蓋をし、火をつけます！", "圧がかかってから、23分加圧します。そして自然放置！圧が抜けたら、蓋を開けてお好みの濃さまで煮詰めてね！出来上がり～☆", "☆★ウチの圧力鍋は低圧、高圧の2段階なのですが、高圧で20分加圧しました★☆"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "2", "塩サバの味噌煮★塩サバで簡単クッキング★", "https://recipe.rakuten.co.jp/recipe/1920001977/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/53ba22f948f017319b3507f83af7074b4163375d.05.2.3.2.jpg", "300円前後", 
        "約30分", "11-72-322", 
        "さば全般", "2", 
        '[{"name": "塩鯖", "quantity": "2", "unit": "枚"}, {"name": "酒", "quantity": "2", "unit": "大さじ"}, {"name": "味噌", "quantity": "2", "unit": "大さじ"}, {"name": "水（200cc）", "quantity": "1", "unit": "カップ"}, {"name": "砂糖", "quantity": "1", "unit": "大さじ"}, {"name": "みりん", "quantity": "1", "unit": "大さじ"}, {"name": "生姜（チューブでもいい）", "quantity": "0", "unit": "適量"}]', '["鯖は食べやすいように切り分け、鯖以外の調味料を全て合わせておきます。", "調味料を鍋にいれ、沸騰したら塩鯖を投入。弱めの火にしてグツグツグツグツ。だいたい２０分前後蓋をせず放っておくだけ♪", "たまに汁を上にかけたりしながら、ちょいととろみが出来ればできあがり。盛りつけて、汁をかければ出来上がり。簡単！", "★2011年10月11日★【ノルウェー塩さばレシピ人気投票コンテスト】にノミネートされました♪", "こちらがコンテストのトップ絵。記念に一枚♪", "★2011年10月25日★塩さばレシピコンテスト１位を頂きました！投票頂きました皆様、ありがとうございます♪"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "4", "塩サバのさっぱり☆ぽん酢焼き", "https://recipe.rakuten.co.jp/recipe/1050004277/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/0bbe379a7fad80ea1f386551c167eb891ed8b012.98.2.3.2.jpg", "指定なし", 
        "指定なし", "11-72-322", 
        "さば全般", "2", 
        '[{"name": "塩さば", "quantity": "2", "unit": "半身"}, {"name": "＊酒", "quantity": "2", "unit": "小匙"}, {"name": "薄力粉", "quantity": "0", "unit": "適量"}, {"name": "ごま油", "quantity": "0", "unit": "適量"}, {"name": "ピーマン（お好みで）", "quantity": "3", "unit": "個"}, {"name": "☆ヤマサ　昆布ぽん酢", "quantity": "1", "unit": "大匙"}, {"name": "☆おろし生姜（チューブ）", "quantity": "2", "unit": "ｃｍ"}]', '["サバは骨とヒレを取り除き（←やらなくてもOK）、1枚を２～３カットする。酒を振って１０分位置き、両面に、茶漉しで薄く薄力粉を振る。", "ごま油を引いて熱したフライパンで皮目の方から焼き、隙間で付け合せの野菜も焼く。（今回はピーマンですが、葱等も合います）", "酒少量（分量外）を振り入れて蓋をして蒸し焼きにして中まで火を通し、☆を加えてフライパンを揺すり、ざっと絡めたら完成♪"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "2", "ふっくらやわらかになる！ブリの照り焼き", "https://recipe.rakuten.co.jp/recipe/1440002551/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/4afe752d922f5057921b2380825afbe7ba160229.47.2.3.2.jpg", "500円前後", 
        "約30分", "11-74-57", 
        "ぶり", "4", 
        '[{"name": "ブリの切り身", "quantity": "4", "unit": "切れ"}, {"name": "片栗粉", "quantity": "2", "unit": "大さじ"}, {"name": "＜照り焼きのタレ＞", "quantity": "0", "unit": 0}, {"name": "★醤油", "quantity": "2", "unit": "大さじ"}, {"name": "★酒", "quantity": "2", "unit": "大さじ"}, {"name": "★みりん", "quantity": "2", "unit": "大さじ"}, {"name": "★砂糖", "quantity": "1", "unit": "大さじ"}]', '["ブリの切り身の両面にまんべんなく塩を振り、約１５分ほど置く。", "★印のタレの材料を混ぜ合わせておく。", "キッチンペーパーでブリから出た余分な水分を拭き取り、全体にまんべんなく、薄く片栗粉をまぶす。※私はいつもビニール袋に入れてフリフリしています。", "ここで、別の鍋にお湯を沸かしておく。※私はティファールの電気ケトルを使用。", "ゴマ油を引いたフライパンに、ブリを皮目から入れ、両面にこんがり焼き色が付くまで焼く。", "フライパンに熱湯を注ぎ、一旦、ブリを取り出し、湯は捨てる。", "フライパンに、あらかじめ混ぜ合わせておいた★印のタレを入れ、軽く沸騰させる。", "ブリを加え、煮絡めたらできあがり♪"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "3", "新さんま♪入荷！基本の焼き方（フライパンで）", "https://recipe.rakuten.co.jp/recipe/1070003614/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/915cb5d33190b9679f110db979f1e43b7fd1f795.08.2.3.2.jpg", "300円前後", 
        "約30分", "11-75-56", 
        "さんま", "2", 
        '[{"name": "秋刀魚", "quantity": "2", "unit": "匹"}, {"name": "塩", "quantity": "0", "unit": "適量"}, {"name": "粗塩（下ごしらえ用）", "quantity": "0", "unit": "適量"}, {"name": "レモン", "quantity": "1", "unit": "切れ"}]', '["秋刀魚は、粗塩をたっぷりふり10〜15分おく。", "臭みの汁が出るので、氷水でよく洗い流す。その後、キッチンペーパーで水気をよく拭く。", "塩をまんべんなく振る。", "熱したフライパンに、クッキングペーパーを敷いて、秋刀魚を入れる。", "蓋をして、中火で4分間。焦げ目が出来ていたら、表裏ひっくり返す。（クッキングペーパーの四隅を持ち、一度取り出してひっくり返すと、綺麗にできます。）", "蓋をあけたまま、中火で3分30秒〜4分間焼く。※蓋をあけること。", "すだちやレモンを添えて。", "10月1日のPickupレシピに選ばれたレシピです。魚グリルを敬遠されている方にお勧めの焼き方です♪魚屋さんに教えてもらった焼き方なので、お墨付きですよ (^_^)"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "2", "鯛のポワレ　レモンバターソース", "https://recipe.rakuten.co.jp/recipe/1360003718/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/bcaa366ee665e4e84f1f1402a03cc99be824f9f2.27.2.3.2.jpg", "500円前後", 
        "約15分", "11-76-325", 
        "鯛", "2", 
        '[{"name": "白身魚切り身（鯛、スズキなど）", "quantity": "2", "unit": "枚"}, {"name": "塩", "quantity": "0", "unit": "少々"}, {"name": "こしょう", "quantity": "0", "unit": "少々"}, {"name": "小麦粉", "quantity": "1", "unit": "大さじ"}, {"name": "オリーブオイル", "quantity": "3", "unit": "大さじ"}, {"name": "にんにく", "quantity": "1", "unit": "片"}, {"name": "レモン汁", "quantity": "1", "unit": "大さじ"}, {"name": "バター（またはマーガリン）", "quantity": "5", "unit": "g"}, {"name": "塩（ソース用）", "quantity": "0", "unit": "適量"}]', '["白身魚の両面に塩・こしょうを軽く振っておく。にんにくは皮をむき、包丁の腹で軽くつぶしておく。", "白身魚の表面に浮いてきた水分をペーパーなどでふき取り、両面に小麦粉を軽くはたく。", "フライパンにオリーブオイル、にんにくを入れ弱火にかけ、にんにくの香りをオイルに移す。にんにくがきつね色になったら取り出す。", "3のフライパンに白身魚を皮が下になるように入れ、熱いオイルをスプーンで魚に回しかけながら中火で7～8分程度焼く。", "魚の厚みの半分くらいまできつね色になったらひっくり返し、火を止めて余熱で火を通す。（約5分）", "魚を取り出し、残ったオイルにバターとレモン汁を加え、かき混ぜながら中火で2/3くらいになるまで煮詰める。", "皿に6のソースを敷き、焼いた魚を盛り付ける。お好みで野菜のソテーを添えて。"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "2", "自家製だれで♪しらす丼", "https://recipe.rakuten.co.jp/recipe/1560009881/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/5a507eb095ca9734de9f495e65729c02a6c9fa37.11.2.3.2.jpg", "500円前後", 
        "5分以内", "11-78-469", 
        "しらす", "2", 
        '[{"name": "釜揚げしらす", "quantity": "1", "unit": "g"}, {"name": "炊きたてごはん", "quantity": "2", "unit": "丼"}, {"name": "韓国のり", "quantity": "1", "unit": "大"}, {"name": "刻みねぎ", "quantity": "2", "unit": "大さじ"}, {"name": "わさび", "quantity": "0", "unit": "適量"}, {"name": "＜Ａ＞", "quantity": "0", "unit": 0}, {"name": "しょうゆ", "quantity": "5", "unit": "ｍｌ"}, {"name": "みりん", "quantity": "1", "unit": "ｍｌ"}, {"name": "酒", "quantity": "1", "unit": "ｍｌ"}]', '["小鍋にみりん・酒を入れて煮立たせます。煮立ったら醤油を加えてひと煮立ちさせ、火からおろして冷まします。", "丼ぶりに炊き立てごはんをよそい、韓国のりをちぎりながらのせます。", "釜揚げしらすをたっぷりとのせ、刻みねぎを散らし、わさびを添えます。①のたれをかけていただきます。"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "4", "和風しらすパスタ", "https://recipe.rakuten.co.jp/recipe/1020010118/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/2b9588fa2f68eb96f9c00db39fb5590ad2dd2b36.98.2.3.2.jpg", "300円前後", 
        "約15分", "11-78-469", 
        "しらす", "2", 
        '[{"name": "スパゲッティ", "quantity": "1", "unit": "g"}, {"name": "釜揚げしらす", "quantity": "4", "unit": "g"}, {"name": "白だし", "quantity": "5", "unit": "大さじ"}, {"name": "しそ", "quantity": "4", "unit": "枚"}, {"name": "オリーブ油", "quantity": "2", "unit": "大さじ"}, {"name": "ゆで汁", "quantity": "2", "unit": "大さじ"}, {"name": "白ごま", "quantity": "0", "unit": "お好みで"}]', '["スパゲッティをゆでる。", "フライパンにオリーブ油を入れ温める。スパゲッティ、しらすを入れ絡める。ゆで汁を入れ混ぜ、白だしを入れ、絡めながら混ぜる。", "お皿に盛り付け、しそを刻んで乗せれば出来上がり！お好みでごまをかけてください！"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "1", "フライパン de ししゃもの竜田揚げ", "https://recipe.rakuten.co.jp/recipe/1570010934/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/53b296b867d421d565d2cbb575e8a9e56fefdfa3.20.2.3.2.jpg", "指定なし", 
        "指定なし", "11-78-471", 
        "ししゃも", "3", 
        '[{"name": "ししゃも", "quantity": "1", "unit": "本"}, {"name": "☆しょうゆ、みりん、酒", "quantity": "1", "unit": "各大さじ"}, {"name": "☆しょうが、にんにくのすりおろし", "quantity": "0", "unit": "各少々"}, {"name": "片栗粉", "quantity": "0", "unit": "適宜"}, {"name": "サラダ油", "quantity": "0", "unit": "適宜"}]', '["ポリ袋に☆の調味料類、ししゃもを入れ、10分ほどおきます。", "余分な水分をキッチンペーパーでふきとり、片栗粉にまぶします。", "フライパンにししゃもがギリギリかぶるくらいの量のサラダ油を入れ、熱します。両面をカリッとするまで揚げたら完成です。"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "3", "ご飯が進む！★　カレイの煮付け　★", "https://recipe.rakuten.co.jp/recipe/1950006142/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/5ffefc87aa237f7f778a7c808f01bc72076ba16d.01.2.3.2.jpg", "300円前後", 
        "約15分", "11-78-323", 
        "カレイ（カラスカレイ）", "2", 
        '[{"name": "カレイ　or　カラスカレイ", "quantity": "2", "unit": "切れ"}, {"name": "生姜", "quantity": "2", "unit": "／"}, {"name": "★醤油", "quantity": "2", "unit": "大さじ"}, {"name": "★みりん", "quantity": "2", "unit": "大さじ"}, {"name": "★酒", "quantity": "2", "unit": "大さじ"}, {"name": "★水", "quantity": "2", "unit": "／"}]', '["生姜をみじん切りにする。鍋に★印調味料等を入れ煮立てる。カレイを入れ、落としぶたをし、弱火にして１５分程煮る。", "かれいに火が通ったのを確認して、出来上がりです。", "器に盛りつけて、お好みで浅葱のみじん切りを乗せても。"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "1", "赤魚の煮付け", "https://recipe.rakuten.co.jp/recipe/1120007223/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/d6183057007dacda0bfa7ac575099192b3456dc2.21.2.3.2.jpg", "300円前後", 
        "約15分", "11-78-523", 
        "赤魚", "2", 
        '[{"name": "赤魚", "quantity": "2", "unit": "切れ"}, {"name": "生姜", "quantity": "5", "unit": "g"}, {"name": "○酒", "quantity": "1", "unit": "cc"}, {"name": "○醤油", "quantity": "2", "unit": "大さじ"}, {"name": "○砂糖", "quantity": "1", "unit": "大さじ"}, {"name": "○みりん", "quantity": "1", "unit": "大さじ"}]', '["鍋に○の調味料を入れて軽く煮立たせます。", "表面に切り込みを入れた赤魚・薄切りにした生姜を入れます。", "落とし蓋をしふつふつとした状態で4～5分煮ます。", "蓋を取り煮詰め、煮汁がなくなる前に火を消して出来上がりです。"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "1", "小松菜の桜炒め", "https://recipe.rakuten.co.jp/recipe/1920015809/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/df455b7bab282c2ff7d020e1a31942a6b0f23cdf.72.2.3.2.jpg", "300円前後", 
        "5分以内", "11-79-1504", 
        "桜えび", "3", 
        '[{"name": "小松菜", "quantity": "2", "unit": "g"}, {"name": "乾桜えび", "quantity": "1", "unit": "g"}, {"name": "ガーリック顆粒", "quantity": "1", "unit": "小さじ"}, {"name": "ごま油", "quantity": "0", "unit": "大さじ半"}, {"name": "塩こしょう", "quantity": "0", "unit": "少々"}]', '["ごま油とガーリック顆粒を入れた中に桜えびを入れて軽く炒めます。", "小松菜は 葉と芯に分け食べやすい長さに切っておきます。", "①に②の芯を先に入れ炒め火を通します。", "③に葉の分を加え炒め 塩こしょうして味を調えます。", "器に盛って出来上がり"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "2", "簡単♪春キャベツと桜えびのペペロンチーノ", "https://recipe.rakuten.co.jp/recipe/1560003548/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/51c5b5cdcc0a75695bce2376dfebe892e15f60d2.11.2.3.2.jpg", "500円前後", 
        "約15分", "11-79-1504", 
        "桜えび", "2", 
        '[{"name": "パスタ", "quantity": "1", "unit": "g"}, {"name": "春キャベツ", "quantity": "1", "unit": "g"}, {"name": "桜えび", "quantity": "6", "unit": "g"}, {"name": "にんにく", "quantity": "1", "unit": "片"}, {"name": "赤唐辛子", "quantity": "2", "unit": "本"}, {"name": "塩", "quantity": "0", "unit": "少々"}, {"name": "オリーブオイル", "quantity": "2", "unit": "大さじ"}]', '["にんにくはみじん切りに、赤唐辛子は輪切りにします。キャベツはざく切りにします。", "塩を入れたたっぷりの湯でパスタを表示時間通り茹でます。茹で上がる１分前にキャベツを加えて一緒に茹でます。", "フライパンににんにく、赤唐辛子、オリーブオイルを入れて弱火にかけます。", "香りがしてきたら火を強め、茹で上がったパスタ、キャベツ、パスタの茹で汁（大さじ２）、桜えびを加えて炒めます。", "塩を振り、味をととのえます。"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "3", "木綿豆腐とはんぺんで美味ふんわり焼き", "https://recipe.rakuten.co.jp/recipe/1020004059/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/aa211c6ef56568bb207a2524e66ea4bc22650c10.75.2.3.2.jpg", "300円前後", 
        "約15分", "11-79-1504", 
        "桜えび", "3", 
        '[{"name": "水切りした木綿豆腐", "quantity": "1", "unit": "パック"}, {"name": "はんぺん", "quantity": "1", "unit": "袋(約"}, {"name": "桜エビ", "quantity": "2", "unit": "大さじ"}, {"name": "干し椎茸", "quantity": "4", "unit": "個"}, {"name": "中華あじ顆粒", "quantity": "1", "unit": "大さじ"}, {"name": "片栗粉", "quantity": "1", "unit": "大さじ"}]', '["水で戻した干し椎茸は細かく角切りに。材料を全部ボールに入れて手で混ぜます！", "フライパンに油をひき、丸く整えた1を並べていきます。火をつけて中火で焼いていきます。私はこの量で約15個できました。", "ひっくり返して、キツネ色の焼き色が着いていたら良い焼き加減です。両面キツネ色の焼き色になったらできあがりです。", "そのままでも味がついているので美味しいですが、我が家の子供は、お好み焼きソース×マヨが好きです。", "私はめんつゆと水を1対5で合わせて温めた汁をかけて食べてます。味ぽんや青じそドレッシングをかけても美味しいと思います。"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "4", "桜海老とニラのチヂミ❀簡単韓国料理♪", "https://recipe.rakuten.co.jp/recipe/1490008992/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/766d6c8b3a6be9764591f7b44f5d50d9a360cf9b.42.2.3.2.jpg", "300円前後", 
        "約15分", "11-79-1504", 
        "桜えび", "2", 
        '[{"name": "【チヂミ】", "quantity": "0", "unit": 0}, {"name": "★ニラ", "quantity": "1", "unit": "束"}, {"name": "★桜海老", "quantity": "0", "unit": "二掴み(多めに◎)"}, {"name": "★小麦粉", "quantity": "1", "unit": "g"}, {"name": "★片栗粉", "quantity": "5", "unit": "g"}, {"name": "★かつお顆粒だし", "quantity": "1", "unit": "大さじ"}, {"name": "★鶏ガラ顆粒だし", "quantity": "1", "unit": "大さじ"}, {"name": "★卵", "quantity": "1", "unit": "個"}, {"name": "水", "quantity": "1", "unit": "cc"}, {"name": "【焼く時】", "quantity": "0", "unit": 0}, {"name": "ごま油", "quantity": "2", "unit": "大さじ"}, {"name": "【タレ】", "quantity": "0", "unit": 0}, {"name": "☆醤油", "quantity": "2", "unit": "大さじ"}, {"name": "☆酢", "quantity": "2", "unit": "大さじ"}, {"name": "(☆コチュジャン)", "quantity": "1", "unit": "(大さじ"}, {"name": "白ゴマ", "quantity": "0", "unit": "少々"}, {"name": "ネギ", "quantity": "0", "unit": "少々"}, {"name": "【トッピング】", "quantity": "0", "unit": "↓なくても"}, {"name": "かつお節", "quantity": "0", "unit": "適量"}]', '["【タレ作り】☆の材料を混ぜて、二人分のタレ用の小皿へ白ゴマと細かく刻んだネギを入れて軽く混ぜるお子様や辛いの苦手な人はコチュジャン入れなくても◎", "【チヂミ作り】ニラを3cmずつ切り、水以外の★をボウルへ軽く全体を箸で混ぜてから、水を3回に分けて入れ少しずつ混ぜる", "フライパンにごま油を入れてから火をつけ、全体に油が行き渡るようフライパンを回し、①の生地を一気に全部入れて中火で蓋をする", "全体に火が通り、焼いている面に軽く焦げ目が付いたら、ひっくり返してもう片方も蓋をして中火で焼く", "焼いたチヂミをまな板にのせ、食べやすい大きさ(3cmほどずつ)正方形に切り、お皿に盛り付けるあれば鰹節かけて完成♪", "チョレギサラダやサムゲタン風スープなど一緒に食べて、韓国料理を楽しんで下さい❀チョレギ＆参鶏湯も近々レシピ載せれたら♪"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "4", "ベビーホタテとエビのバター醤油パスタ", "https://recipe.rakuten.co.jp/recipe/1690005492/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/05178c60b37df46d7acfec6465e2b582cf6c9e36.59.2.3.2.jpg", "指定なし", 
        "指定なし", "11-79-1506", 
        "小エビ", "2", 
        '[{"name": "スパゲティ", "quantity": "2", "unit": "g程度"}, {"name": "エビ（小）", "quantity": "1", "unit": "尾"}, {"name": "ベビーホタテ", "quantity": "1", "unit": "個"}, {"name": "大葉", "quantity": "1", "unit": "枚"}, {"name": "バター", "quantity": "2", "unit": "g"}, {"name": "醤油", "quantity": "2", "unit": "大さじ"}, {"name": "パスタの茹で汁", "quantity": "8", "unit": "ｃｃ"}, {"name": "ドライガーリック", "quantity": "0", "unit": "少々"}, {"name": "あらびき胡椒", "quantity": "0", "unit": "少々"}, {"name": "水（パスタ茹で用）", "quantity": "2", "unit": "リットル"}, {"name": "塩（パスタ茹で用）", "quantity": "1", "unit": "小さじ"}]', '["お湯2リットルに対し塩（小さじ１）を入れたお湯でスパゲティを茹でます茹で汁８０ｃｃをとっておきますスパゲティは茹で時間の1分～1分30秒前に茹であげます", "よく熱したフライパンにバターをいれ、エビとホタテを軽く炒めます", "茹であがったパスタを入れて、ドライガーリック、醤油、茹で汁を入れて炒めます", "味がなじんだら器に盛り、大葉の細切りをのせ、荒引き胡椒をかけて出来上がり♪"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "2", "２で覚える／香ばしい♪オートミールのえびせんべい", "https://recipe.rakuten.co.jp/recipe/1360026068/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/4133554f3ac54913e9622f2b9e3298e4d8d6c3e4.38.9.3.3.jpg", "指定なし", 
        "約30分", "11-79-1507", 
        "干しエビ", "2", 
        '[{"name": "オートミール", "quantity": "2", "unit": "大さじ"}, {"name": "干しエビ", "quantity": "2", "unit": "大さじ"}, {"name": "水", "quantity": "2", "unit": "大さじ"}, {"name": "塩", "quantity": "2", "unit": "つまみ"}]', '["オートミールに水を入れて混ぜ、ラップなしで５００Wのレンジに２０秒かけます。", "①をレンジから取り出し、干しエビと塩を加えて、水分がオートミールに吸収されてまとまるまで３０秒ほど混ぜます。", "②を４分割してクッキングシートに薄く丸く伸ばし、ラップなしで５００Wのレンジに２分かけます。", "③をレンジから取り出し、手で触れるくらい粗熱が取れたらひっくり返して、ラップなしで５００Wのレンジに２分かけます。", "レンジから取り出して、固くなっていたら完成です。まだ柔らかければ１０秒ずつ追加加熱してください。焦げないように注意して見ていてください。", "▽工程はYouTubeにも♪https://youtu.be/j7mxT6AQAxk▽魚のせんべいはこちらhttps://youtu.be/qrXZl30R-G0"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "3", "エビとブロッコリーのガーリック炒め。", "https://recipe.rakuten.co.jp/recipe/1400015359/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/e458cf0f501b1bba93815ae8af017a7cd3d6f4d6.58.2.3.2.jpg", "500円前後", 
        "約15分", "11-79-65", 
        "その他のエビ", "4", 
        '[{"name": "エビ", "quantity": "3", "unit": "g"}, {"name": "ブロッコリー", "quantity": "1", "unit": "房"}, {"name": "ニンニク", "quantity": "3", "unit": "カケ"}, {"name": "オリーブオイル", "quantity": "3", "unit": "大さじ"}, {"name": "塩胡椒", "quantity": "0", "unit": "適量"}, {"name": "片栗粉", "quantity": "1", "unit": "大さじ"}, {"name": "酒", "quantity": "0", "unit": "少々"}]', '["ブロッコリーを食べやすい大きさに切ます。お皿に並べラップをして、600ワットで3分加熱します。", "エビの殻をむき、背わたを取ります。軽く洗って、酒と片栗粉をまぶしておきます。", "みじん切りにしたニンニクと、大さじ2のオリーブオイルをフライパンに入れ、弱火でじっくりと加熱します。", "ニンニクの香りがしてきたら、エビを炒めます。この時エビに軽く塩をふって下さい。（分量外）", "エビに8割位火が通ったら、ブロッコリーを加えます。ざっくり混ぜて、残りのオリーブオイル大さじ1と塩胡椒で味を整えて出来上がりです。"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "2", "揚げずにおつまみ ♡ タコの唐揚げ", "https://recipe.rakuten.co.jp/recipe/1330007292/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/0796e43a727b3cc60bbc0b1a29f765c20c6e0ff5.11.2.3.2.jpg", "500円前後", 
        "約15分", "11-81-67", 
        "たこ", "3", 
        '[{"name": "ゆでダコ", "quantity": "3", "unit": "g"}, {"name": "生姜", "quantity": "1", "unit": "片"}, {"name": "☆醤油", "quantity": "4", "unit": "小"}, {"name": "☆酒", "quantity": "1", "unit": "大"}, {"name": "片栗粉", "quantity": "0", "unit": "適量"}, {"name": "ブラックペッパー(粗挽き)", "quantity": "0", "unit": "少々"}, {"name": "油", "quantity": "4", "unit": "大"}, {"name": "レモン汁", "quantity": "0", "unit": "お好みで。"}]', '["タコはぶつ切りにしてしっかりとペーパータオルで水気を押さえる。※油はね防止にしっかりと水気を取ります。", "ビニールにタコとすりおろし生姜、☆を入れて軽く揉む。", "タコにあじが馴染んだら片栗粉をまぶす。", "ひたひたの油で揚げ焼きにする。この時表面が固まらないうちに触ると衣がはがれてしまうので、固まってから返すようにしましょう。", "こんがりと色づいてカリッとしたら取りだす。", "お皿に盛り付けて仕上げにブラックペッパーをふって出来上がり。お好みでレモン汁をかけてもＯＫです。", "２０１４．４．３【 今日のPickupレシピ 】に紹介されました。"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "4", "炊飯器にお任せ♫お手軽シーフードピラフ", "https://recipe.rakuten.co.jp/recipe/1510017242/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/7279015e189623484f46fa749d35fb07b9b43d6a.12.2.3.2.jpg", "300円前後", 
        "約30分", "11-82-60", 
        "あさり", "4", 
        '[{"name": "お米", "quantity": "3", "unit": "合"}, {"name": "水", "quantity": "5", "unit": "."}, {"name": "玉ねぎ", "quantity": "2", "unit": "／"}, {"name": "人参", "quantity": "3", "unit": "／"}, {"name": "冷凍シーフードミックス", "quantity": "3", "unit": "g"}, {"name": "バター", "quantity": "1", "unit": "g"}, {"name": "コンソメ", "quantity": "1", "unit": "大さじ"}, {"name": "みりん", "quantity": "1", "unit": "大さじ"}, {"name": "塩・胡椒", "quantity": "0", "unit": "少々"}, {"name": "乾燥パセリ", "quantity": "0", "unit": "少々"}]', '["冷凍シーフードミックスは解凍しておき、玉ねぎ・人参はみじん切りにします。", "お米を研いで、水を2合と3合の間(２.５合)まで入れます。シーフードミックスからも玉ねぎからも水分が結構出るので、これより多いと仕上がりがベチャッとしてしまいます。", "バターをレンジで温めて溶かします。", "②に溶かしバター・コンソメ・みりん・塩・胡椒を加えてよくかき混ぜます。", "④に玉ねぎ・人参・シーフードミックスを入れます。かき混ぜずに乗せるだけで良いです。", "後はお釜を炊飯器にセットし、「白米急速」コースでスイッチを入れます。白米急速コースがない場合は「おこわ」「すしめし」コースで炊いて下さい。", "炊き上がったら、蒸らさずに直ぐお釜を炊飯器から取り出し、しゃもじで底から返す様に混ぜ合わせます。炊き上がりは水っぽく感じますが、混ぜている内に馴染んで丁度良い硬さになります。", "お皿に盛って乾燥パセリを振りかけたら完成です。"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "4", "☆我が家のご馳走☆ブイヤベース", "https://recipe.rakuten.co.jp/recipe/1840013598/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/5ec7531329887a09d7655af9023c0aa6a5db937a.92.2.3.2.jpg", "指定なし", 
        "指定なし", "11-82-63", 
        "はまぐり", "4", 
        '[{"name": "えび", "quantity": "1", "unit": "尾"}, {"name": "ハマグリ", "quantity": "8", "unit": "個"}, {"name": "シーフードミックスのいか", "quantity": "1", "unit": "個"}, {"name": "鱈、鯛", "quantity": "2", "unit": "gずつ"}, {"name": "ホタテの貝柱", "quantity": "1", "unit": "個"}, {"name": "たまねぎ", "quantity": "1", "unit": "個"}, {"name": "にんにく", "quantity": "2", "unit": "かけ"}, {"name": "トマトジュース", "quantity": "3", "unit": "カップ"}, {"name": "酒", "quantity": "1", "unit": "カップ"}, {"name": "コンソメキューブ", "quantity": "2", "unit": "個"}, {"name": "サフラン", "quantity": "2", "unit": "個"}, {"name": "塩", "quantity": "0", "unit": "少々"}, {"name": "バジル粉", "quantity": "1", "unit": "こさじ"}]', '["たまねぎとにんにくをうすぎりにする", "鍋に油をしき、たまねぎとにんにくと塩をいれていためる。しんなりしてきたらトマトジュースと酒とコンソメキューブとサフランをいれてひとにたちさせる", "えび、はまぐり、いか、鱈、鯛、ホタテ、バジル粉をいれて中火で魚介にしっかり火が通るまで４，５分煮たらできあがり"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "3", "にんじん大量消費にんじんとツナ缶のゴマ味噌マヨ和え", "https://recipe.rakuten.co.jp/recipe/1340024949/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/31936bf4ed1d130116286291c91c417c6ef72f99.23.2.3.2.jpg", "100円以下", 
        "5分以内", "12-95-13", 
        "にんじん", "5", 
        '[{"name": "にんじん", "quantity": "2", "unit": "本（"}, {"name": "ツナ缶", "quantity": "1", "unit": "缶"}, {"name": "★マヨネーズ", "quantity": "3", "unit": "大"}, {"name": "★白ごま、酢", "quantity": "1", "unit": "大"}, {"name": "★味噌（合わせみそ使用）", "quantity": "1", "unit": "小"}]', '["にんじんは4～5㎝幅の細切りにし、耐熱容器にいれてふんわりラップをして600ｗのレンジで2分30～3分加熱する。火傷に気を付けながら水気をペーパーで拭う。", "１に軽く油を切ったツナ缶と★を加えて温かいうちに和えたら完成♪", "にんじんの底の方にも水がたまっているので拭ってください。味がぼやけてしまいます。お好みでブラックペッパーをふっても♪"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "2", "ビールに合う★ドイツ人直伝！本格ジャーマンポテト", "https://recipe.rakuten.co.jp/recipe/1720008423/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/b9abc38f50a7b7598fdb373b83728dd8ea563490.77.2.3.2.jpg", "300円前後", 
        "約15分", "12-97-17", 
        "じゃがいも", "2", 
        '[{"name": "じゃがいも", "quantity": "3", "unit": "個"}, {"name": "ソーセージ", "quantity": "4", "unit": "本"}, {"name": "ベーコン", "quantity": "4", "unit": "枚"}, {"name": "オリーブオイル", "quantity": "1", "unit": "小さじ"}, {"name": "ニンニクみじん切り", "quantity": "1", "unit": "片分"}, {"name": "塩胡椒", "quantity": "0", "unit": "適量"}, {"name": "粒マスタード", "quantity": "1", "unit": "小さじ"}, {"name": "パセリみじん切り", "quantity": "0", "unit": "適量"}]', '["まず、じゃがいもをよく洗い、皮つきで2センチ角に切ってお鍋に入れ、ひたひたになるぐらいの水を注いで中火にかけ、粉吹き芋をつくります。焦がさないよう注意です。", "ソーセージとベーコンを食べやすい大きさに切ります。中火に温めたフライパンにオリーブオイルとニンニクを入れ、香りが出てきたらソーセージとベーコンをこんがり炒めます。", "②に①のじゃがいもを入れ、塩胡椒で味付けをしながら炒めます。火を切って粒マスタードを入れて和え、最後にパセリみじん切りを散らして出来上がり！"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "3", "簡単おいしい！我が家のチンジャオロース（青椒肉絲）", "https://recipe.rakuten.co.jp/recipe/1560004245/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/99344849a9629cc1e6a22ba9bc4b0eb23f89c410.68.2.3.2.jpg", "300円前後", 
        "約15分", "12-97-17", 
        "じゃがいも", "3", 
        '[{"name": "牛肉薄切り（豚肉でもＯＫ）", "quantity": "4", "unit": "g"}, {"name": "ピーマン", "quantity": "8", "unit": "個"}, {"name": "じゃがいも（またはたけのこ水煮）", "quantity": "1", "unit": "個"}, {"name": "（お肉の下味用）ごま油", "quantity": "0", "unit": "適量"}, {"name": "（お肉の下味用）塩こしょう", "quantity": "0", "unit": "適量"}, {"name": "（お肉の下味用）片栗粉", "quantity": "1", "unit": "大さじ"}, {"name": "★オイスターソース", "quantity": "2", "unit": "大さじ"}, {"name": "★醤油", "quantity": "2", "unit": "大さじ"}, {"name": "★砂糖", "quantity": "1", "unit": "大さじ"}, {"name": "★酒", "quantity": "4", "unit": "大さじ"}, {"name": "にんにく（すりおろし）", "quantity": "1", "unit": "片"}, {"name": "生姜（すりおろし）", "quantity": "1", "unit": "片"}]', '["お肉は細切りにして、ごま油・塩こしょう・片栗粉でもみこんで下味をつけておく。種を除いたピーマンと皮をむいたじゃがいもは5mmほどの細切りにしておく。", "★の材料で、合わせ調味料を作っておく。", "フライパンにごま油をしき、火をかけ湯気が出てきたら、にんにくと生姜を炒める。", "にんにくと生姜の香りが香ばしくなってきたら、お肉を入れ、中火で炒める。", "お肉の色が変わってきたら、じゃがいもを入れる。", "じゃがいもが軽くしんなりしかかったところに、ピーマンを入れ炒める。", "ピーマンが軽くしんなりしかかかったら、すばやく★の合わせ調味料を回し入れ、軽くなじむように混ぜて手早く炒めたらできあがり！", "このレシピが「楽天レシピの大人気おかず120」（50ページ目）に掲載されました！皆様のおかげです、ありがとうございました！", "2015.8.2チンジャオロース部門「最近の7日間」「総合」ともに1位になりました！皆様のおかげです、ありがとうございました！", "2017.1.24楽天レシピの「今日のPickupレシピ」で、このレシピを紹介していただきました！皆様のおかげです、ありがとうございました！"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "4", "電子レンジで★ジャガイモの和風サラダ", "https://recipe.rakuten.co.jp/recipe/1150000347/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/e128eac4f5b0224ed836c0321696f8ad09890710.28.2.3.2.jpg", "100円以下", 
        "約10分", "12-97-17", 
        "じゃがいも", "2", 
        '[{"name": "ジャガイモ", "quantity": "2", "unit": "個"}, {"name": "かつお節", "quantity": "2", "unit": "つまみ"}, {"name": "マヨネーズ", "quantity": "1", "unit": "小さじ"}, {"name": "醤油", "quantity": "1", "unit": "小さじ"}]', '["ジャガイモは１口大に切りラップをする", "電子レンジで５分ほどチンする♪", "粗熱が取れたらマヨネーズ・鰹節・しょうゆをあえる", "子供から大人まで好きな味♪洋食にも和食にもあいます"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "1", "甜麺醤なしで出来る！簡単 ホイコーロー", "https://recipe.rakuten.co.jp/recipe/1090001352/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/a1e10faff3c822e32a92aa8531801e62828eaad2.47.2.3.2.jpg", "300円前後", 
        "約10分", "12-98-1", 
        "キャベツ", "2", 
        '[{"name": "豚肉", "quantity": "5", "unit": "枚"}, {"name": "キャベツ", "quantity": "4", "unit": "枚"}, {"name": "ピーマン", "quantity": "2", "unit": "個"}, {"name": "ねぎ", "quantity": "4", "unit": "cm"}, {"name": "にんにく", "quantity": "1", "unit": "かけ"}, {"name": "しょうが", "quantity": "0", "unit": "少々"}, {"name": "◎味噌", "quantity": "5", "unit": "大さじ"}, {"name": "◎砂糖", "quantity": "2", "unit": "大さじ"}, {"name": "◎しょうゆ", "quantity": "2", "unit": "大さじ"}, {"name": "◎酒", "quantity": "2", "unit": "大さじ"}, {"name": "◎ごま油", "quantity": "2", "unit": "小さじ"}, {"name": "豆板醤", "quantity": "2", "unit": "小さじ"}]', '["●下準備●豚肉、キャベツは一口大に切っておくねぎは斜め細切り、ピーマンは乱切りにするにんにく、しょうがは薄切りにする◎の材料を合わせておく", "フライパンにサラダ油を熱し、塩少々を入れ、キャベツをサッと炒め皿に出しておく", "ごま油少々を熱し、にんにく、しょうがを炒め香りが出てきたら豚肉、ねぎを炒める。豚肉が焼けたら豆板醤と◎を入れ、キャベツ、ピーマンを加えサッと炒めたら出来上がり♬"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "1", "プロ直伝！ニラともやしの卵炒め", "https://recipe.rakuten.co.jp/recipe/1050010995/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/470d7126e612f8c2c2bd49bda6ec71c57cb8fa5f.46.2.3.2.jpg", "100円以下", 
        "約10分", "12-99-318", 
        "もやし", "3", 
        '[{"name": "ニラ", "quantity": "1", "unit": "束"}, {"name": "もやし", "quantity": "1", "unit": "袋"}, {"name": "卵", "quantity": "2", "unit": "個"}, {"name": "マヨネーズ", "quantity": "1", "unit": "大さじ"}, {"name": "塩・こしょう", "quantity": "0", "unit": "各少々"}, {"name": "おろしニンニク", "quantity": "1", "unit": "小さじ"}, {"name": "おろししょうが", "quantity": "1", "unit": "小さじ"}, {"name": "★オイスターソース", "quantity": "2", "unit": "小さじ"}, {"name": "★醤油", "quantity": "1", "unit": "小さじ"}, {"name": "ゴマ油", "quantity": "1", "unit": "小さじ"}]', '["ニラは４センチ程の長さにカットしておきます。", "フライパンにマヨネーズを乗せて火にかけます。", "マヨネーズが溶け出しフライパン全面に広がったら、塩こしょうを入れて混ぜた卵液を入れてスクランブルエッグを作ります。", "８割り程火が通った状態で取り出しておきます。", "同じフライパンにゴマ油をひいたらしょうがとニンニクを乗せて火にかけます。", "ニラともやしを加えて炒め、軽くしんなりしたら★を加えて炒めます。", "【３】の卵を戻して軽く混ぜたら完成。", "【今日のPickupレシピ】にてこのレシピが紹介されました！つくレポを下さった皆さんのおかげです！有難うございました！(Ｔ▽Ｔ)2016.2.24", "もやし炒めで一等賞を頂きました！有難うございます(Ｔ▽Ｔ)2016.2.25", "にらのレシピでも一等賞を頂きました！有難うございます( ;∀;)2016.613　何気に4位にもわが餃子が入っています♬", "おつまみにもおすすめ！「にら」が主役の献立6提案の簡単献立でご紹介頂きました！有難うございます(Ｔ▽Ｔ)", "人気料理集めました！「卵」が主役の献立6提案の簡単献立でご紹介頂きました！有難うございます(Ｔ▽Ｔ)", "「【つくったよ数200件超え】おいしく節約！家計の救世主「もやし」の大人気レシピ」でご紹介頂きました！有難うございます(Ｔ▽Ｔ)"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "2", "5分で速攻！もやしだけdeとん平焼き☆", "https://recipe.rakuten.co.jp/recipe/1720024883/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/b216d4165833f64571894763c033c668452cd2b1.20.2.3.2.jpg", "100円以下", 
        "5分以内", "12-99-318", 
        "もやし", "3", 
        '[{"name": "もやし", "quantity": "1", "unit": "袋"}, {"name": "卵", "quantity": "3", "unit": "個"}, {"name": "塩胡椒", "quantity": "0", "unit": "少々"}, {"name": "おたふくソース（お好み焼きソース）", "quantity": "0", "unit": "適量"}, {"name": "マヨネーズ", "quantity": "0", "unit": "適量"}, {"name": "お好きなトッピング（葱・鰹節・青のり等）", "quantity": "0", "unit": "お好みで"}]', '["熱したフライパンに油を敷き、もやしをサッと炒めて塩胡椒で味付けする。☆炒めたもやしは一旦皿に移しておく。", "卵をボウルに割り入れ、切るように混ぜる。卵にもお好みで塩胡椒を（´౿`）", "熱したフライパンに油を敷き、卵を一気に流しこむ。", "半熟になるまで時々かき混ぜながら卵を広げる。※破れてしまわないよう注意！！", "卵がお好みの硬さで固まったら、端に炒めておいたもやしを置く。フライ返しでくるっと包んだら火を止める。※おいしくなるコツ参照", "お皿に移し、お好みソースとマヨネーズをかける。たっぷりがおすすめ♡好きなようにトッピングしたら完成〜☆"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "1", "家にあるもので簡単タコライス♪", "https://recipe.rakuten.co.jp/recipe/1890007828/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/a2cd7c7e903b310943fba0b6c45bd7eed6c17da1.86.2.3.2.jpg", "500円前後", 
        "約30分", "12-100-2", 
        "レタス", "4", 
        '[{"name": "豚ひき肉(合挽きでも)", "quantity": "3", "unit": "g"}, {"name": "玉ねぎ", "quantity": "1", "unit": "小"}, {"name": "トマト", "quantity": "0", "unit": "適量"}, {"name": "レタス", "quantity": "0", "unit": "適量"}, {"name": "とけるチーズ", "quantity": "0", "unit": "適量"}, {"name": "カレー粉", "quantity": "1", "unit": "大さじ"}, {"name": "ケチャップ", "quantity": "5", "unit": "大さじ"}, {"name": "ウスターソース", "quantity": "2", "unit": "大さじ"}, {"name": "塩こしょう", "quantity": "0", "unit": "適量"}, {"name": "ご飯", "quantity": "0", "unit": "人数分"}, {"name": "温泉卵（お好みで）", "quantity": "0", "unit": "人数分"}]', '["玉ねぎはみじん切りにする。レタス、トマトは食べやすい大きさに切る。", "フライパンにサラダ油を熱し、玉ねぎを炒める。しんなりしてきたら、ひき肉を入れ炒める。", "ひき肉の色が変わったらカレー粉、塩コショウを入れ炒める。", "ケチャップ、ウスターソースを入れて、少し炒める。", "ご飯の上に４を乗せ、レタス、トマト、チーズ、温泉卵を盛り付けて完成♪", "☆レンジで温泉卵の作り方☆コップなどの深みのある耐熱容器に卵を割り入れ、かぶる位の水を入れる。爪楊枝で黄身に5箇所穴を開け、ラップせず500wで1分チン。", "辛いのが好きな方はタバスコ追加しても♪マヨネーズも合います(^ ^)", "※『Pickupレシピコーナー』に紹介していただきました。"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "4", "楊枝不要☆アスパラベーコン巻き", "https://recipe.rakuten.co.jp/recipe/1360004853/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/62984a6723a5f17bb6e89919cc699b25a5cabf87.57.2.3.2.jpg", "指定なし", 
        "指定なし", "12-100-11", 
        "アスパラ", "3", 
        '[{"name": "アスパラ", "quantity": "4", "unit": "本"}, {"name": "ベーコン(ハーフ)", "quantity": "6", "unit": "枚位"}, {"name": "胡椒", "quantity": "0", "unit": "少々"}]', '["アスパラはベーコンに合わせてカット茎と穂先とで少しの時間差で柔らかくなるまで茹でる。", "ベーコンはハーフベーコンでも1枚を半分に切ってもイイのですがカットしてある方を巻き始めにして巻く", "巻き終わりが真ん中に来るように巻きあげます", "巻き終わりを下にして耐熱皿に並べ、レンジで1分程加熱", "巻き終わりを下にしてフライパンで両面に焼き目を付け完成。好みでブラックペッパーを振ってね"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "1", "超簡単ホテルの味！じゃがいもの冷製ヴィシソワーズ", "https://recipe.rakuten.co.jp/recipe/1530003875/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/a1453d72c952334530a1ba41e5e55da927d4070c.52.2.3.2.jpg", "100円以下", 
        "約30分", "12-100-859", 
        "新じゃが", "4", 
        '[{"name": "じゃがいも", "quantity": "3", "unit": "中"}, {"name": "玉ねぎ", "quantity": "1", "unit": "中"}, {"name": "お水", "quantity": "2", "unit": "cc"}, {"name": "牛乳", "quantity": "4", "unit": "cc"}, {"name": "顆粒ブイヨン", "quantity": "1", "unit": "大さじ"}, {"name": "塩", "quantity": "1", "unit": "小さじ"}, {"name": "バター", "quantity": "1", "unit": "g"}]', '["玉ねぎをスライスしてバターで炒めます。", "皮を剥いてスライスしたじゃがいもを加えて炒めます。半分火が通ったらお水を加えて煮ます。", "じゃがいもが触って崩れるくらいまで煮たら、フードプロセッサーに入れて、牛乳を加えて撹拌します。", "コンソメと塩を加えて撹拌します。器に盛り付けて完成！"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "3", "こってり甘辛♫豆苗とエノキの豚肉巻き", "https://recipe.rakuten.co.jp/recipe/1510020049/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/370b674451dac522071b1eaf467b7fd088e461f7.12.2.3.2.jpg", "300円前後", 
        "約30分", "12-100-444", 
        "とうみょう（豆苗）", "3", 
        '[{"name": "豚薄切り肉", "quantity": "2", "unit": "g"}, {"name": "豆苗", "quantity": "2", "unit": "／"}, {"name": "エノキ", "quantity": "1", "unit": "小"}, {"name": "★塩・黒胡椒", "quantity": "0", "unit": "少々"}, {"name": "★薄力粉", "quantity": "0", "unit": "適量"}, {"name": "サラダ油", "quantity": "0", "unit": "適量"}, {"name": "◎酒", "quantity": "2", "unit": "大さじ"}, {"name": "◎みりん", "quantity": "2", "unit": "大さじ"}, {"name": "◎醤油", "quantity": "2", "unit": "大さじ"}, {"name": "◎砂糖", "quantity": "1", "unit": "大さじ"}, {"name": "◎和風だしの素", "quantity": "1", "unit": "小さじ"}, {"name": "◎おろしニンニク", "quantity": "1", "unit": "小さじ"}]', '["豆苗は根元から切って長さを半分にし、えのきは石づきを切り落としてほぐします。", "豚薄切り肉を広げ、★印の塩・黒胡椒で下味をつけたら★印の薄力粉を振ります。", "②の豚薄切り肉に①の豆苗とえのきを適量ずつ乗せます。", "手前からきつめにクルクルと巻き、巻き終わりを下にして馴染ませます。", "フライパンにサラダ油をひいて熱し、④を巻き終わりを下にして並べ焼いていきます。", "箸で少しずつ焼き面をずらして転がし、全面に焼き色を付けます。", "全面に焼き色が付いたら一旦お皿に取り出します。全てフライパンに乗せられなかった分がある場合は続けて同じ様に焼いてお皿に移して下さい。", "キッチンペーパー等で軽くフライパンを拭き、◎印の調味料を入れて煮立たせ、強火で少しトロミが付いてくるまで煮詰めます。", "タレに若干トロミが付いてきたら中火にし、⑦の肉巻きをフライパンに戻して転がしながら絡めます。", "全体的にタレが絡んで照りが出てきたら火を止めます。", "後はお皿に盛ってフライパンに残っているタレをかけたら完成です。"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "4", "ちゃちゃっと美味い♪豆苗炒め", "https://recipe.rakuten.co.jp/recipe/1200001916/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/c8bc8f7fa198047ded4658e2462d4f570bca18cb.99.2.3.2.jpg", "指定なし", 
        "5分以内", "12-100-444", 
        "とうみょう（豆苗）", "2", 
        '[{"name": "豆苗", "quantity": "1", "unit": "パック（根元を切って"}, {"name": "ごま油", "quantity": "1", "unit": "大さじ"}, {"name": "☆お湯", "quantity": "5", "unit": "ｃｃ"}, {"name": "☆中華味の素（うちはウェイパー）", "quantity": "1", "unit": "小さじ"}, {"name": "☆酢", "quantity": "1", "unit": "小さじ"}, {"name": "☆にんにく（みじん切り、チューブでも）", "quantity": "2", "unit": "小さじ"}, {"name": "☆塩コショウ", "quantity": "0", "unit": "少々"}]', '["☆の材料を合わせておく（お湯に溶かしておく）。", "豆苗は根元を切り落として洗い、ざるに上げておく。", "フライパンにごま油を熱し、豆苗を入れて全体に油を回したら、すぐに手順１の調味料を投入。ざっと炒めて完成！（コツ参照）", "2014/02/24今日のPickupレシピで紹介していただきました（余談ですが、ソチ五輪の閉会式の日でした←本当に余談です笑）。ありがとうございます！"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "1", "そら豆☆ガーリック炒め", "https://recipe.rakuten.co.jp/recipe/1210006032/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/92b4b9518216ad7eb1c0f5fd11909bfa5e105156.86.2.3.2.jpg", "300円前後", 
        "約15分", "12-100-23", 
        "そら豆", "2", 
        '[{"name": "そら豆", "quantity": "1", "unit": "さや"}, {"name": "★刻みにんにく（桃屋の瓶を使用）", "quantity": "1", "unit": "大"}, {"name": "★オリーブオイル", "quantity": "1", "unit": "大"}, {"name": "▲塩（味を調えます）", "quantity": "0", "unit": "少々"}, {"name": "▲ブラックペッパー（味を調えます）", "quantity": "0", "unit": "少々"}]', '["さやから中の豆を取り出します。", "黒い筋の下にあるぷっくりと膨らんだ所に、爪を立てて上に引き上げます。", "こんな感じで、剥いていくと簡単です。", "熱していないフライパンに★を入れて、中火にかけます。にんにくの香りがするまで炒めます。※にんにくが飛び散るので注意して下さい。", "③のそら豆を加えて、3分ほど炒めます。", "▲で味を調えたら出来上がりです。"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "1", "必ずからりと揚がる、タラの芽の天ぷら", "https://recipe.rakuten.co.jp/recipe/1720007348/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/eec1534e51d39a42ac675101bbfd66d297bbb7c8.40.2.3.2.jpg", "300円前後", 
        "約30分", "12-100-1530", 
        "たらの芽", "3", 
        '[{"name": "タラの芽", "quantity": "6", "unit": "本"}, {"name": "薄力粉（生地用）", "quantity": "1", "unit": "グラム"}, {"name": "水", "quantity": "1", "unit": "カップ"}, {"name": "日本酒", "quantity": "3", "unit": "ｃｃ"}, {"name": "薄力粉（具にまぶす分）", "quantity": "1", "unit": "グラム"}]', '["・タラの芽を洗って、袴を取り除きます。", "・計量した薄力粉、水、ボールを冷蔵庫で冷やします。", "・タラの芽の茎に、十字の切り込みを入れます。※タラの芽が小ぶりの時は必要ありません。", "・ボールに水と日本酒、氷少々を入れます。・生地用の薄力粉を加えて、ざっくり混ぜます。", "油を180度に熱しておきます。", "・まぶし用の薄力粉をポリ袋に入れます。・タラの芽を入れて、振りながら、粉を全体にまぶします。", "・余分な粉をはたき落とし、生地をくぐらせます。", "・余分な生地が付いていたら、振り落とします。", "・油に根元の方を入れて、5秒ほど待ちます。・全体を入れます。", "・油の表面が隠れない程度に、次々に、具材を入れます。※具材に火が通っていないうちは、大きい泡になります。・途中具材の裏表を返します。", "・泡が小さくなって、揚げ色が付いたら揚げあがりです。", "網に乗せて、油を切ります。", "・お好みの天つゆなどを用意します。※今日は大根おろし添えの天つゆと、炭塩を用意しました。", "・油を吸い取る紙を敷いた皿に、盛り付けます。"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "1", "フレンチシェフ直伝！簡単クレソンサラダ♪（茗荷他）", "https://recipe.rakuten.co.jp/recipe/1650006391/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/807c505d8c0de9bd3cc7287cbf631078bd345431.47.2.3.2.jpg", "100円以下", 
        "5分以内", "12-100-317", 
        "クレソン", "2", 
        '[{"name": "クレソン", "quantity": "2", "unit": "半束（"}, {"name": "茗荷（みょうが）", "quantity": "5", "unit": "．"}, {"name": "ベーコン", "quantity": "1", "unit": "枚"}, {"name": "グレープシードオイル（オリーブ油でも！）", "quantity": "0", "unit": "大匙半"}, {"name": "あれば、ミニトマト", "quantity": "1", "unit": "個"}, {"name": "フレンチドレッシング（市販品）", "quantity": "2", "unit": "ｃｃ位"}, {"name": "↑", "quantity": "0", "unit": 0}, {"name": "新鮮な手作りがお勧めです♪", "quantity": "0", "unit": 0}]', '["ベーコンを１ｃｍ幅程度に切って、油したフライパン弱火で色が付くまで炒める。", "ミョウガを小口切りし、３つ位の長さにカットしたクレソンと混ぜ皿に乗せる。トマトは縦４つに切って飾る。", "１．をオイルごと２．にかける。ドレッシングをかけてお召し上がり下さい。"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "2", "スナップエンドウとじゃがいものコンソメ炒め", "https://recipe.rakuten.co.jp/recipe/1330006240/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/40f18435ca1c90f0e34f3946372196bc4dc2880c.45.2.3.2.jpg", "指定なし", 
        "指定なし", "12-100-846", 
        "スナップえんどう", "4", 
        '[{"name": "スナップエンドウ", "quantity": "1", "unit": "g"}, {"name": "じゃがいも", "quantity": "2", "unit": "正味"}, {"name": "ベーコン", "quantity": "4", "unit": "g"}, {"name": "コンソメ顆粒", "quantity": "1", "unit": "小さじ"}, {"name": "塩・こしょう", "quantity": "0", "unit": "少々"}, {"name": "サラダ油", "quantity": "0", "unit": "適量"}]', '["スナップエンドウは筋をとり、熱湯でさっと茹でる", "じゃがいもは、くし形に切り、水にさらす崩れない程度に、やや硬めに茹でるベーコンは1ｃｍ幅に切る", "フライパンに油をひき、ベーコンをさっと炒め、じゃがいもを加える。じゃがいもが硬い場合は、ここで水または酒少々を加え、蓋をして蒸し焼きにし、中まで火を通す。", "スナップエンドウを加え、コンソメと塩・こしょうで味付けする皿に盛り、出来上がり。"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "1", "箸が止まらない！ゴーヤとツナのサラダ", "https://recipe.rakuten.co.jp/recipe/1620022473/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/6017710d22d91168d9e0f5da78e57c4511f7d610.62.2.3.2.jpg", "300円前後", 
        "約10分", "12-101-31", 
        "ゴーヤ", "2", 
        '[{"name": "ゴーヤ", "quantity": "3", "unit": "分の"}, {"name": "ツナ", "quantity": "5", "unit": "g"}, {"name": "★塩", "quantity": "0", "unit": "少々"}, {"name": "★マヨネーズ", "quantity": "1", "unit": "g"}, {"name": "（ミニトマト）", "quantity": "2", "unit": "（"}]', '["ゴーヤを薄めに切る。沸騰したお湯に入れて塩ゆでする。（１分）ざるにあげて、軽くしぼる。", "ボールに、ゴーヤ、油きりしたツナ、★を入れ、混ぜ合わせたら出来上がり！トマトを飾るとキレイです。"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "2", "とろっとろ☆冬瓜のそぼろあん煮", "https://recipe.rakuten.co.jp/recipe/1070011411/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/2e3f15fbe85853e62cdaed5b7957fa8fe3719ec8.08.2.3.2.jpg", "500円前後", 
        "約30分", "12-101-821", 
        "とうがん（冬瓜）", "3", 
        '[{"name": "冬瓜", "quantity": "3", "unit": "g"}, {"name": "鶏挽肉", "quantity": "2", "unit": "g"}, {"name": "☆塩、胡椒", "quantity": "0", "unit": "適量"}, {"name": "三つ葉", "quantity": "8", "unit": "本"}, {"name": "油", "quantity": "0", "unit": "適量"}, {"name": "＝＝＝＝＝＝だし汁＝＝＝＝＝＝", "quantity": "0", "unit": 0}, {"name": "●水", "quantity": "1", "unit": "ml"}, {"name": "●お酒", "quantity": "5", "unit": "ml"}, {"name": "●醤油", "quantity": "2", "unit": "大さじ"}, {"name": "●みりん", "quantity": "2", "unit": "大さじ"}, {"name": "●砂糖", "quantity": "2", "unit": "大さじ"}, {"name": "●和風顆粒だし", "quantity": "2", "unit": "大さじ"}, {"name": "□水溶き片栗粉", "quantity": "0", "unit": "適量（多めの片栗粉で）"}, {"name": "＝＝＝＝＝＝お好みで＝＝＝＝＝＝", "quantity": "0", "unit": 0}, {"name": "山椒", "quantity": "0", "unit": "適量"}, {"name": "七味唐辛子", "quantity": "0", "unit": "適量"}]', '["熱したフライパンに油を入れて、鶏挽肉を炒めます。軽く、塩、胡椒をします。", "冬瓜は皮を剥いて、1cm幅のひと口大に切ります。挽肉に火が通ったら冬瓜を入れて、ヘラで軽く炒めます。※油が冬瓜にまわるようにします。", "水と●の調味料を混ぜて、よく溶かします。", "タレを入れて、沸騰したら蓋をして弱火で、蒸し煮にします。10分程度煮込むと、冬瓜はとろとろになります。", "多めの水溶き片栗粉で、とろみをつけます。そのまま、しばらく煮込みます。", "4cmに切った三つ葉を入れて、少し蒸らして火を止めます。", "器に盛って、出来上がり〜！熱々をどうぞ (o＾ω＾o)お好みで、山椒や七味をかけても良いです☆", "タレが多めになっていますので、ご飯にかけてお召し上がり下さいね (^_<)-☆とろっとろの冬瓜と、とろみのついた鶏そぼろあんが絡んで、とても美味しいですよ〜 (*´∀`*)"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "1", "簡単！揚げない！ナスとオクラの揚げ浸し", "https://recipe.rakuten.co.jp/recipe/1890008883/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/6d24a49874fd19a0cd512577a34b933b05342ab6.86.2.3.2.jpg", "300円前後", 
        "約15分", "12-101-32", 
        "オクラ", "4", 
        '[{"name": "なす", "quantity": "3", "unit": "、"}, {"name": "オクラ", "quantity": "1", "unit": "パック"}, {"name": "大根", "quantity": "1", "unit": "センチ"}, {"name": "めんつゆ（ストレート）", "quantity": "1", "unit": "カップ"}, {"name": "サラダ油", "quantity": "2", "unit": "大さじ"}]', '["大根はすりおろし、麺つゆと混ぜておく。麺つゆが濃縮タイプのものは薄めてください。", "オクラは網のパックに入れたまま塩（分量外）を振りかけ、こすり合わせるように洗い、額のフチを剥く。沸騰した湯に入れてサッと茹で、ザルに上げておく。", "ナスは、縦4等分に切る。フライパンに油を熱し、ナスを皮目から焼く。", "じっくり焼いて、しんなりしてきたらパタンと倒して焼く。焼き色がついたら同じように倒し3面焼く。", "焼きあがったら1の麺つゆにドンドン入れていく。", "オクラも少し焼き色がつく程度に焼いて麺つゆにつける。", "出来立ての熱々も…冷蔵庫で冷やしても…どちらも美味しいです♪", "簡単！揚げない！揚げ出し豆腐レシピID 1890004637も是非(^^)", "pickupレシピに掲載していただきました(*´꒳`*)"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "4", "プロが教える！【無限オクラ唐揚げ】", "https://recipe.rakuten.co.jp/recipe/1070063785/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/f9f1463e1c106885e33a40b465b710a6922c0716.18.9.3.3.jpg", "300円前後", 
        "約15分", "12-101-32", 
        "オクラ", "2", 
        '[{"name": "オクラ（ガクを削ってひと口サイズに切る）", "quantity": "6", "unit": "本"}, {"name": "☆めんつゆ", "quantity": "1", "unit": "小さじ"}, {"name": "☆おろし生姜", "quantity": "2", "unit": "小さじ"}, {"name": "☆おろしにんにく", "quantity": "2", "unit": "小さじ"}, {"name": "片栗粉（オクラにまぶす用）", "quantity": "4", "unit": "大さじ"}, {"name": "サラダ油（揚げる用）", "quantity": "0", "unit": "揚げられる量"}, {"name": "青のり（仕上げにからめる", "quantity": "0", "unit": "適量"}, {"name": "塩（仕上げにからめる）", "quantity": "0", "unit": "適量"}]', '["詳しい作り方はYouTubeで動画を配信しているので「ズボライタリアン」 で検索してチェックしてみてくださいね！(^^)", "ボウルに☆を入れて混ぜ合わせ、下処理をしたオクラを加えてしっかりからめて下味をつける！", "ポリ袋に片栗粉を入れて➁のオクラを入れてポリ袋の口を閉じてよく振って片栗粉をまぶす！", "小鍋にサラダ油を入れて火にかけ180度になるまで温める！（割り箸を入れて気泡が出ればOK）", "③のオクラの余分な片栗粉を落として④に入れてカリッとなるまで揚げる！", "⑤がよく揚がったら油を切ってキッチンペーパーにとり、ボウルに移して塩と青のりを振りしっかり絡めたらお皿に盛って完成！"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "1", "食べだすと止まらない！いんげん辛味噌炒め", "https://recipe.rakuten.co.jp/recipe/1140002687/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/66d87b07824ef2fff567ee978e83cd765a59200c.07.2.3.2.jpg", "100円以下", 
        "約10分", "12-101-22", 
        "いんげん", "2", 
        '[{"name": "いんげん", "quantity": "2", "unit": "本程"}, {"name": "ゴマ油", "quantity": "2", "unit": "大さじ"}, {"name": "味噌", "quantity": "1", "unit": "大さじ"}, {"name": "砂糖", "quantity": "1", "unit": "大さじ"}, {"name": "豆板醤", "quantity": "1", "unit": "小さじ"}, {"name": "かつおだし", "quantity": "1", "unit": "小さじ"}, {"name": "ごま", "quantity": "1", "unit": "大さじ"}]', '["いんげんは両端を少しだけ切り落とし、一口大に切る。", "フライパンにゴマ油をひき、1を炒める。少ししんなりしたら、味噌、かつおだし、豆板醤、砂糖、ゴマを入れ味付けする。味噌等がインゲンによくなじんだら完成。", "【追記その1】沢山のつくレポありがとうございますm(__)mなすを1本追加して、少し調味料を増やして、「いんげんとなすの辛味噌炒め」作りました。こちらもおすすめです！", "【追記その2】いんげんが少ない時は…じゃがいもプラスで「いんげんとじゃがいもと辛味噌炒め」もおすすめです！調味料はじゃがいもやいんげんの量で調整してくださいね。"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "4", "夏野菜の白だし煮浸し", "https://recipe.rakuten.co.jp/recipe/1450024662/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/c85db242e796462c84e4224d8842e2018a47f8b4.46.2.3.2.jpg", "500円前後", 
        "約15分", "12-101-456", 
        "パプリカ", "4", 
        '[{"name": "なす", "quantity": "2", "unit": "本"}, {"name": "きゅうり", "quantity": "2", "unit": "本"}, {"name": "おくら", "quantity": "4", "unit": "本"}, {"name": "ピーマン", "quantity": "1", "unit": "個"}, {"name": "パプリカ(赤)", "quantity": "1", "unit": "個"}, {"name": "パプリカ(黄)", "quantity": "1", "unit": "個"}, {"name": "白だし", "quantity": "1", "unit": "cc"}, {"name": "水", "quantity": "2", "unit": "cc"}, {"name": "はちみつ", "quantity": "1", "unit": "大さじ"}]', '["なす、ピーマン、パプリカ、キュウリ、オクラを1.5センチ幅くらいに揃えて切る。(食べやすい大きさで大丈夫です)", "漬け汁を作ります。白だし、水、はちみつを容器にいれて混ぜておく。", "1の野菜を少なめの油で揚げ、よく油をきり、つけ汁に入れる。", "熱いままでも、冷やしても。お好きな状態で召し上がれ。"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "2", "シンプルなのに激ウマ！とうもろこしご飯", "https://recipe.rakuten.co.jp/recipe/1410011266/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/26e221fc0fa4fa0083280066c57308b6df037038.07.2.3.2.jpg", "300円前後", 
        "1時間以上", "12-101-422", 
        "とうもろこし", "4", 
        '[{"name": "とうもろこし", "quantity": "1", "unit": "本"}, {"name": "お米", "quantity": "2", "unit": "合"}, {"name": "塩", "quantity": "1", "unit": "小さじ"}, {"name": "酒", "quantity": "0", "unit": "少々"}]', '["お米を研ぎ、浸水させておく。", "とうもろこしの皮を剥く。", "３等分くらいに切り、包丁を使って芯から実を削いでいく。※芯は使うので捨てない", "浸水させたお米の水をよく切り、炊飯ジャーへ入れる。", "塩・酒・水（分量外）を２合の目盛りまで入れ、よくかき混ぜる。", "３で切ったとうもろこしの実と芯を入れ、炊飯器で炊く。（通常の炊飯モードでOK）", "炊き上がったら芯を取り出して完成！"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "1", "簡単副菜！れんこんとブロッコリーの味噌マヨ焼き", "https://recipe.rakuten.co.jp/recipe/1920016452/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/fb30895db1372968683c036ee54ee11c4191bb4b.23.2.3.2.jpg", "300円前後", 
        "約10分", "12-102-15", 
        "れんこん", "2", 
        '[{"name": "れんこん", "quantity": "1", "unit": "g"}, {"name": "ブロッコリー", "quantity": "1", "unit": "g"}, {"name": "※味噌", "quantity": "1", "unit": "大さじ"}, {"name": "※マヨネーズ", "quantity": "1", "unit": "大さじ"}, {"name": "※酒", "quantity": "2", "unit": "大さじ"}]', '["ブロッコリーは小房に分け、分量外の塩を入れた沸騰した湯で固めに茹でる。れんこんは１ｃｍ幅に切り、分量外の酢水につける。", "熱したフライパンにサラダ油をひき、れんこん、ブロッコリーを炒める。れんこんに火が通ったら、混ぜ合わせた※を入れ、ざっくり炒め合わせて出来上がり。"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "4", "サクサク食感！レンコンチーズ焼き", "https://recipe.rakuten.co.jp/recipe/1330003619/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/ad1b5438af4fcb40020eecc5d52b31db1049c203.11.2.3.2.jpg", "100円以下", 
        "約15分", "12-102-15", 
        "れんこん", "4", 
        '[{"name": "レンコン", "quantity": "1", "unit": "コ半"}, {"name": "とろけるチーズ", "quantity": "2", "unit": "大"}, {"name": "オリーブオイル", "quantity": "1", "unit": "大"}]', '["レンコンは皮をむいて、７～８mm幅に切る。酢水につけてアクを抜く。", "フライパンにオリーブオイルをひいて、キッチンペーパーで水気を押さえたレンコンを並べて両面が透き通るまで焼く。焼けたら取り出す。", "先ほどのフライパンにとろけるチーズをレンコンの大きさに置く。その上にレンコンをのせ、軽く押して接着させる。", "チーズがカリカリに色付くまで焼く。ひっくり返して両面をこんがりとするまで焼く。", "器に盛り付けて出来上がり。", "２０１４、１０、９　配信楽天レシピメルマガ 『 ワインにぴったりのお手軽おつまみ、探してみました！ 』 に掲載されました☆"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "2", "食感が楽しい！　山芋ステーキ", "https://recipe.rakuten.co.jp/recipe/1150003055/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/e2659547364c057ae39e20d7d4890d1bf4d9fb71.69.2.3.2.jpg", "300円前後", 
        "約10分", "12-102-18", 
        "山芋", "4", 
        '[{"name": "山芋（長芋）", "quantity": "2", "unit": "g"}, {"name": "卵", "quantity": "1", "unit": "個"}, {"name": "白だし", "quantity": "1", "unit": "大さじ"}, {"name": "片栗粉", "quantity": "1", "unit": "大さじ"}, {"name": "サラダ油", "quantity": "2", "unit": "大さじ"}, {"name": "かつおパック", "quantity": "1", "unit": "袋"}, {"name": "万能ネギ", "quantity": "0", "unit": "少々"}, {"name": "つけダレ", "quantity": "0", "unit": "お好みで"}]', '["山芋はマッチ棒大に細切り。卵は卵黄を崩さないように卵白と分けておく。", "山芋に白だし、卵白、片栗粉を加えてよく混ぜる。", "フライパンにサラダ油を入れて温め、２の生地を流し込む。蓋をして中火で5分間焼く。", "生地がほぼ固まっていることを確認したら、ひっくり返して形を整え、更に１～２分焼く。", "皿に移してかつおパックと卵黄をトッピングし、万能ネギを散らせば完成。食べる直前に卵黄を崩し、醤油、ポン酢、ソース、ケチャップ、マヨネーズ等お好みの調味料をつけていただく。"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "4", "長芋とキノコのバターソテー＼(-o-)／", "https://recipe.rakuten.co.jp/recipe/1780015518/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/a492bef501aea1c3008b6e9f57160cea651dca77.78.2.3.2.jpg", "300円前後", 
        "約15分", "12-102-847", 
        "長芋", "2", 
        '[{"name": "長芋", "quantity": "2", "unit": "分の"}, {"name": "エリンギ", "quantity": "2", "unit": "分の"}, {"name": "シメジ", "quantity": "2", "unit": "分の"}, {"name": "バター", "quantity": "1", "unit": "g"}, {"name": "醤油", "quantity": "1", "unit": "大さじ"}, {"name": "塩コショウ", "quantity": "0", "unit": "少々"}, {"name": "パセリ", "quantity": "0", "unit": "少々"}]', '["長芋は、ピューラーで皮を剥いて1ｃｍ幅の輪切りにします(・o・)エリンギ、シメジは、食べやすい大きさに切ってください", "フライパンにバターを入れて熱し、長芋から焼きます(・o・)", "長芋の両面に焼き色が付いてから、エリンギ、シメジを入れて、塩コショウ、醤油を回し入れて炒めます(・o・)", "お皿に盛りつけて、パセリをかけたら完成です＼(-o-)／"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "4", "居酒屋メニュー！焼き海苔で簡単春菊の磯部和え", "https://recipe.rakuten.co.jp/recipe/1920015724/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/e1bb440d9e971a2701e6553f6dc823c10c355bcf.23.2.3.2.jpg", "100円以下", 
        "約10分", "12-102-449", 
        "春菊", "2", 
        '[{"name": "春菊", "quantity": "1", "unit": "g"}, {"name": "だし汁", "quantity": "1", "unit": "大さじ"}, {"name": "しょうゆ", "quantity": "2", "unit": "小さじ"}, {"name": "焼き海苔", "quantity": "0", "unit": "少々"}]', '["春菊は沸騰した湯でさっと茹で、水気をしっかり絞ったら一口大に切る。", "ボウルにだし汁、しょうゆを混ぜ、春菊を和える。仕上げに焼き海苔を混ぜて出来上がり。"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "2", "まぐろの山かけ", "https://recipe.rakuten.co.jp/recipe/1010017963/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/06a044d0bcb2cb6e95337cbbe5aaf9941d058f02.93.2.3.2.jpg", "指定なし", 
        "約10分", "12-102-452", 
        "大和芋", "2", 
        '[{"name": "まぐろ赤身（刺身用）", "quantity": "1", "unit": "g"}, {"name": "やまいも", "quantity": "1", "unit": "g"}, {"name": "しょうゆ", "quantity": "1", "unit": "小さじ"}, {"name": "みりん", "quantity": "1", "unit": "小さじ"}, {"name": "万能ねぎ", "quantity": "0", "unit": "少々"}, {"name": "しょうゆ、わさび", "quantity": "0", "unit": "適量"}]', '["まぐろを食べやすい大きさにぶつ切りにする。しょうゆとみりんを合わせた中にまぐろを入れて混ぜ、冷蔵庫で10~15分漬け置く。", "やまいもをすりおろす。", "※粘りの強い自然薯や大和芋を使う時は、[2]に出汁大さじ2~3（分量外）を加えてよくかき混ぜるとふっくらと仕上がる。", "器にまぐろを盛り付け、その上にやまいもをかける。小口に切った万能ねぎを添える。わさびしょうゆをかけて召し上がって下さい。"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "1", "食べだすと、とまらない☆揚げ里芋の甘辛！", "https://recipe.rakuten.co.jp/recipe/1950012560/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/66fc7af1b72e6955647b36f1434950cde8a37e14.26.2.3.2.jpg", "300円前後", 
        "約30分", "12-103-308", 
        "里芋", "4", 
        '[{"name": "里芋", "quantity": "2", "unit": "個"}, {"name": "片栗粉", "quantity": "3", "unit": "大さじ"}, {"name": "●醤油", "quantity": "2", "unit": "大さじ"}, {"name": "●砂糖", "quantity": "1", "unit": "大さじ"}, {"name": "●みりん", "quantity": "1", "unit": "大さじ"}, {"name": "●酢", "quantity": "1", "unit": "小さじ"}, {"name": "揚げ油", "quantity": "0", "unit": "適量"}]', '["里芋は皮ごと洗って、上下を切り落とし、5分茹でたら水で冷やしながら包丁で皮を剥き、ひと口大に切る。里芋に片栗粉をまぶしたら手でギュッと握ってなじませ、しばらく置く。", "フライパンに●を軽く温め砂糖を溶かして、甘辛たれを作っておく。１の里芋を１８０~１９０度の油で片栗粉がカリッとなるまで揚げる。", "甘辛たれを中火にかけ、揚げた里芋をたれと絡めるように軽く炒めたら出来上がり♪＊焦げないように注意して下さい‼︎"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "4", "里芋とベーコンの炒め煮バター醤油風味", "https://recipe.rakuten.co.jp/recipe/1760019383/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/535148b0b9998af1f7fb118dc5f66c04af725f73.77.2.3.2.jpg", "300円前後", 
        "約15分", "12-103-308", 
        "里芋", "4", 
        '[{"name": "里芋", "quantity": "1", "unit": "個くらい"}, {"name": "ブロックベーコン", "quantity": "1", "unit": "g位"}, {"name": "麺つゆ", "quantity": "5", "unit": "ｍｌ"}, {"name": "バター", "quantity": "2", "unit": "g位"}, {"name": "パセリ(粉末または刻み)", "quantity": "0", "unit": "少々"}, {"name": "水", "quantity": "5", "unit": "ｃｃ位"}]', '["里芋の皮を剥き、一口サイズに切っておく。", "ベーコンを7～8ミリ角位の拍子切りにし、熱したフライパンに入れ、表面に焦げ目がつくくらい炒め、皿などに取り出しておく。", "ベーコンを炒めたフライパンに里芋を入れ炒める。油はひかないで作りましたが、ひいても可)", "里芋の表面に焦げ目が少しついたら、ひたひたになる位の水と麺つゆを入れ煮る。", "里芋に竹串をさしてスーと通る位まで煮込み、水分がほぼなくなったら、ベーコン、バターを入れ、全体にバターをからめるように炒め仕上げる。", "器に盛り付け、パセリの粉末をふる。無ければなしでもよい。"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "1", "本当に美味しい♪☆セロリのきんぴら☆お弁当にも◎", "https://recipe.rakuten.co.jp/recipe/1490005902/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/797e7bfac9c4111a38b13be645fb5036db36ee9c.32.2.3.2.jpg", "指定なし", 
        "約10分", "12-103-314", 
        "セロリ", "2", 
        '[{"name": "セロリ", "quantity": "2", "unit": "本"}, {"name": "ごま油", "quantity": "1", "unit": "大さじ"}, {"name": "☆酒", "quantity": "1", "unit": "大さじ"}, {"name": "☆醤油", "quantity": "1", "unit": "大さじ"}, {"name": "☆砂糖", "quantity": "1", "unit": "小さじ"}, {"name": "☆みりん", "quantity": "1", "unit": "小さじ"}, {"name": "白ごま", "quantity": "0", "unit": "適量"}]', '["セロリの筋をひき、細切りにする。", "フライパンにごま油を熱し、セロリの茎、☆、セロリの葉の順に加えて水分がなくなるまで炒める。", "器に盛り、白ごまをかければ出来上がり！"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "1", "焼き揚げで作る油淋鶏（ユーリンチー）", "https://recipe.rakuten.co.jp/recipe/1980005459/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/903bece790fce2147bafdea66a7ac30df0a04378.14.2.3.2.jpg", "300円前後", 
        "約30分", "12-103-8", 
        "長ネギ（ねぎ）", "4", 
        '[{"name": "鶏もも肉（胸肉でもOK）", "quantity": "1", "unit": "枚"}, {"name": "☆醤油", "quantity": "1", "unit": "大さじ"}, {"name": "☆酒", "quantity": "1", "unit": "大さじ"}, {"name": "☆ニンニク（チューブでOK）", "quantity": "0", "unit": "少々"}, {"name": "☆生姜（チューブでOK）", "quantity": "0", "unit": "少々"}, {"name": "水菜（キュウリでも）", "quantity": "2", "unit": "把"}, {"name": "★長ネギ", "quantity": "1", "unit": "本"}, {"name": "★醤油", "quantity": "3", "unit": "大さじ"}, {"name": "★酒", "quantity": "1", "unit": "大さじ"}, {"name": "★酢", "quantity": "1", "unit": "大さじ"}, {"name": "★ゴマ油", "quantity": "2", "unit": "大さじ"}, {"name": "★砂糖", "quantity": "1", "unit": "小さじ"}, {"name": "★ニンニク", "quantity": "1", "unit": "片"}, {"name": "★生姜（チューブ）", "quantity": "0", "unit": "少々"}, {"name": "★炒りゴマ", "quantity": "1", "unit": "大さじ"}]', '["鶏肉はフォークでプスプス刺してから☆の漬け汁に30分くらい漬けておく。", "長ネギとニンニクはみじん切りにして、★の材料を全て合わせ、ラップして冷蔵庫に入れ馴染ませておく。", "水菜は洗って、4cm幅に切り、ザルにあげて水気を切っておく。", "フライパンに油を入れて汁気を切った鶏肉の皮の方を下に中火でパリッとするまでじっくり焼く。", "焼けたら切り分けて水菜を敷いたお皿に盛りつけ、２のネギソースをかけて出来上がり。"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "4", "中華風☆春雨サラダ", "https://recipe.rakuten.co.jp/recipe/1000000225/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/735abbd311d6c6cf3247d37fbc567ecc1239501b.82.1.3.2.jpg", "300円前後", 
        "指定なし", "12-104-1960", 
        "その他の野菜", "4", 
        '[{"name": "春雨", "quantity": "6", "unit": "g"}, {"name": "ハム", "quantity": "4", "unit": "枚"}, {"name": "キュウリ", "quantity": "1", "unit": "本"}, {"name": "人参", "quantity": "6", "unit": "㎝"}, {"name": "卵", "quantity": "1", "unit": "個"}, {"name": "A　砂糖", "quantity": "5", "unit": "大さじ"}, {"name": "A　酢", "quantity": "5", "unit": "大さじ"}, {"name": "A　醤油", "quantity": "5", "unit": "大さじ"}, {"name": "A　ゴマ油", "quantity": "5", "unit": "大さじ"}, {"name": "A　水", "quantity": "2", "unit": "ml"}, {"name": "いりごま(白)", "quantity": "1", "unit": "大さじ"}]', '["溶き卵を薄く焼いて錦糸卵を作る。ハム、キュウリ、人参は千切りにする。鍋に春雨を入れて、ハム、人参をのせる。", "Aを加えて煮る。火を止めて少し混ぜフタをして冷ます。", "錦糸卵、キュウリ、いりゴマを加えて混ぜる。"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "2", "まるで帆立！エリンギのバター醤油焼き", "https://recipe.rakuten.co.jp/recipe/1780016780/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/75cf4fa0d763c7ba8dd5074c28b06f861839e1fc.75.2.3.2.jpg", "指定なし", 
        "約10分", "12-105-339", 
        "エリンギ", "2", 
        '[{"name": "エリンギ", "quantity": "3", "unit": "本"}, {"name": "にんにく", "quantity": "1", "unit": "半片"}, {"name": "醤油", "quantity": "2", "unit": "小さじ"}, {"name": "てんさい糖(他の砂糖でも可)", "quantity": "1", "unit": "小さじ"}, {"name": "バター", "quantity": "5", "unit": "g"}, {"name": "オリーブオイル", "quantity": "0", "unit": "適量"}]', '["エリンギを厚さ1.5cmくらいに切ります。ちょうど帆立っぽくなるような厚さをイメージして…", "両面に格子状の飾りの切り込みを入れます。帆立っぽくなって、味も染み込みやすくなります！", "フライパンでオリーブオイルとにんにくを火にかけ、香りが立ってきたら、エリンギの両面に軽く焼き目がつくくらい焼きます。", "エリンギに焼き色がついたら弱火にし、バターを入れてエリンギに馴染ませます。あらかじめ混ぜておいた醤油と砂糖を入れて絡め、さらにいい感じに焼き色がついたら出来上がり！", "【補足】ここでは彩りを添えるためにアスパラを使いました。下ゆでしてから、エリンギと一緒に焼いてしまえば一度に出来て時短になりますよ！インゲンなどもオススメです。"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "3", "簡単美味♡クリームスープパスタ", "https://recipe.rakuten.co.jp/recipe/1510019293/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/db5af4efb09a590656677dc29d8cfe907dd590b5.12.2.3.2.jpg", "300円前後", 
        "約15分", "12-105-76", 
        "しめじ", "4", 
        '[{"name": "パスタ", "quantity": "4", "unit": "人分"}, {"name": "ほうれん草", "quantity": "1", "unit": "把"}, {"name": "玉ねぎ", "quantity": "1", "unit": "中"}, {"name": "しめじ", "quantity": "1", "unit": "株"}, {"name": "ハムorベーコン", "quantity": "5", "unit": "枚"}, {"name": "バター", "quantity": "1", "unit": "g"}, {"name": "おろしニンニク", "quantity": "1", "unit": "小さじ"}, {"name": "◎水", "quantity": "2", "unit": "ml"}, {"name": "◎顆粒コンソメ", "quantity": "2", "unit": "大さじ"}, {"name": "◎みりん", "quantity": "2", "unit": "大さじ"}, {"name": "★牛乳", "quantity": "3", "unit": "ml"}, {"name": "★ブラックペッパー", "quantity": "0", "unit": "少々"}, {"name": "★塩", "quantity": "0", "unit": "少々"}]', '["玉ねぎはくし切り、ほうれん草はざく切りに、ハムは重ねて半分に切ってから１cm幅に切り、しめじは石づきを切り落としてから手でほぐします。", "鍋にたっぷりのお湯を沸かし、パスタを入れて規定の時間より１〜２分短めに茹でます。", "パスタを茹でている間にスープを作ります。深型のフライパンにバターとおろしニンニクを入れて軽く炒めます。", "ニンニクの良い香りがしてきたら玉ねぎを入れてしんなりするまで炒めます。", "玉ねぎがしんなりしてきたら、しめじとハムを加えて炒めます。", "全体的にしんなりしたら◎印の材料を加えて一煮立ちさせます。", "一煮立ちしたら★印の材料を加えてかき混ぜ、もう一煮立ちさせます。", "ふつふつと煮立ったらほうれん草を加えてざっとかき混ぜます。", "再度ふつふつと煮立ってきたら火を止めます。", "深めのお皿に茹で上がったパスタをしっかり湯切りして盛ります。", "⑩に⑨をたっぷりとよそったら完成です。お好みで粉チーズをかけても◎"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "3", "まいたけと秋鮭のバター醤油炒め", "https://recipe.rakuten.co.jp/recipe/1560008557/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/6bfd70981e5c1d44f1fcaface84b7957d2d26b8b.11.2.3.2.jpg", "300円前後", 
        "約10分", "12-105-77", 
        "まいたけ", "2", 
        '[{"name": "生鮭", "quantity": "1", "unit": "大"}, {"name": "まいたけ", "quantity": "1", "unit": "パック"}, {"name": "れんこん", "quantity": "5", "unit": "ｃｍ"}, {"name": "バター", "quantity": "1", "unit": "g"}, {"name": "醤油", "quantity": "1", "unit": "大さじ"}, {"name": "塩・こしょう", "quantity": "0", "unit": "少々"}, {"name": "小麦粉", "quantity": "0", "unit": "適量"}]', '["生鮭は骨と皮を取り除き、ひと口大に切ります。塩・こしょうをし、小麦粉をまぶします。", "れんこんは６～7ｍｍのくし形切りにし、酢水につけておきます。まいたけはほぐします。", "フライパンにバターを熱し、生鮭、れんこんを焼きます。鮭に焦げ目がついてきたらまいたけを加えて炒めます。", "醤油をまわしかけ、塩・こしょうで味を調えます。"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "3", "香り豊かな松茸ご飯", "https://recipe.rakuten.co.jp/recipe/1830002839/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/45d8a0a37e7417da2cbd820e15de2fb7b3df5d37.88.2.3.2.jpg", "指定なし", 
        "指定なし", "12-105-337", 
        "松茸", "2", 
        '[{"name": "ご飯", "quantity": "2", "unit": "合"}, {"name": "松茸", "quantity": "1", "unit": "本"}, {"name": "★醤油", "quantity": "2", "unit": "大さじ"}, {"name": "★酒", "quantity": "1", "unit": "大さじ"}, {"name": "★顆粒だしの素", "quantity": "1", "unit": "小さじ"}, {"name": "★塩", "quantity": "1", "unit": "小さじ"}]', '["松茸は固く絞った布巾で汚れをふき取り、食べやすい大きさに切る", "炊飯器にご飯・松茸・★、水をいつもの分量入れ、普段通り炊飯", "炊きあがったらよく蒸らして出来上がり★"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "4", "夏バテ気味でもパクパク♪きゅうりのスタミナ漬け♪", "https://recipe.rakuten.co.jp/recipe/1510004843/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/707111408b0523455e7ca36d7ca803bdbe4bacf2.73.2.3.2.jpg", "100円以下", 
        "約10分", "12-107-9", 
        "ガーリック・にんにく", "5", 
        '[{"name": "きゅうり", "quantity": "2", "unit": "大"}, {"name": "☆ぽん酢", "quantity": "2", "unit": "大さじ"}, {"name": "☆砂糖", "quantity": "1", "unit": "大さじ"}, {"name": "☆ごま油", "quantity": "0", "unit": "少々"}, {"name": "☆ニンニクのすりおろし", "quantity": "1", "unit": "かけ分"}, {"name": "ごま", "quantity": "1", "unit": "大さじ"}]', '["きゅうりに塩小さじ１弱を振りかけて板ずりする。水気が出るまでしばらくおいておく。", "(1)をサッと洗い、硬いもので叩いて割っていく。食べやすい大きさにしたら水気をふきとる。", "ビニール袋に(2)と☆の半分の量を入れて、よく揉みこんで冷蔵庫で冷やす。", "味が染みたら出てきた水気を捨て、残りの☆とごまを混ぜて完成！"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "1", "冷めてもおいしい! 鶏もも肉のマヨポン和え", "https://recipe.rakuten.co.jp/recipe/1350003354/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/249573c75a3e46b48d63fd0c8f5cb2c9fcd5e913.75.2.3.2.jpg", "指定なし", 
        "指定なし", "12-107-856", 
        "万能ねぎ", "2", 
        '[{"name": "鶏もも肉", "quantity": "1", "unit": "枚"}, {"name": "万能ねぎ", "quantity": "3", "unit": "本"}, {"name": "マヨネーズ", "quantity": "1", "unit": "大さじ"}, {"name": "ポン酢", "quantity": "1", "unit": "大さじ"}, {"name": "塩・こしょう", "quantity": "0", "unit": "少々"}]', '["鶏もも肉は一口大に切って塩・こしょうする。万能ねぎは小口切りにする。マヨネーズと濃縮ポン酢をよくまぜ、マヨポン酢を作っておく。", "フライパンに油をひかず、皮目を下にして鶏肉を入れてから火をつける。弱火で皮がキツネ色になるまでじっくりと焼く。途中、鶏肉から出てきた油をキッチンペーパーで吸い取る。", "皮がこんがりと焼けたら裏返し、フタをして2～3分蒸し焼きにする。フタをとって再び油を吸い取ったら、マヨポン酢と万能ねぎを加えてさっと和え、器に盛り付ける。"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "4", "厚揚げ(絹揚げ)のピリ辛ネギまみれ。", "https://recipe.rakuten.co.jp/recipe/1150019616/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/85603cc7ee4bd29b6f7a7e7ed86f24abb1846b0e.22.9.3.3.jpg", "100円以下", 
        "5分以内", "12-107-856", 
        "万能ねぎ", "2", 
        '[{"name": "厚揚げ(絹揚げ)", "quantity": "2", "unit": "四角いの"}, {"name": "青ネギ", "quantity": "1", "unit": "束"}, {"name": "◎醤油", "quantity": "2", "unit": "大さじ"}, {"name": "◎生姜のすりおろし(チューブで可)", "quantity": "4", "unit": "cm"}, {"name": "◎にんにくのすりおろし(チューブで可)", "quantity": "3", "unit": "cm"}, {"name": "◎砂糖", "quantity": "2", "unit": "小さじ"}, {"name": "◎酒", "quantity": "2", "unit": "大さじ"}, {"name": "◎豆板醤", "quantity": "3", "unit": "小さじ"}, {"name": "ごま油", "quantity": "1", "unit": "大さじ"}]', '["厚揚げ(絹揚げ)は一口大に切る。", "青ネギは小口切りにし、◎を合わせておく。", "フライパンにごま油を入れて熱し、厚揚げをカリッと焼く。", "◎を入れて絡める様に炒める。", "青ネギを入れてサッと混ぜる。"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "4", "枝豆カニカマチーズのはんぺん焼き", "https://recipe.rakuten.co.jp/recipe/1760027676/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/a34cce4966167ca862d53f69a38649ab4ea0c957.49.2.3.2.jpg", "300円前後", 
        "約10分", "13-108-107", 
        "はんぺん", "2", 
        '[{"name": "はんぺん", "quantity": "1", "unit": "枚("}, {"name": "カニカマ", "quantity": "2", "unit": "本"}, {"name": "スライスチーズ(とけるタイプ)", "quantity": "1", "unit": "枚"}, {"name": "枝豆(塩ゆでしたもの)", "quantity": "3", "unit": "g"}, {"name": "片栗粉", "quantity": "1", "unit": "小さじ"}, {"name": "塩", "quantity": "0", "unit": "少々"}]', '["■カニカマは細かく手でほぐす■チーズは半分に切ってから細切りにする", "はんぺんをポリ袋などに入れて細かくつぶし、1、残りの材料を加えて混ぜる※なるべく具が均等に混ざるようにします", "2を四等分にして平たく丸め、フライパンで焼く(弱火）※丸める際、枝豆がちょくちょく飛び出しますが、その都度押し戻します(^_^;)", "焼きいろがついたら返して裏面も同様に焼けばできあがりです♪※焦げやすいので気をつけて焼きます"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "2", "カニかまとブロッコリーのとろとろ豆腐あんかけ♪", "https://recipe.rakuten.co.jp/recipe/1790011263/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/345ef555c4210524c92666612fc2b9f6ba1525ae.37.2.3.2.jpg", "300円前後", 
        "約15分", "13-108-530", 
        "カニカマ", "2", 
        '[{"name": "絹ごし豆腐", "quantity": "2", "unit": "g"}, {"name": "ブロッコリー", "quantity": "6", "unit": "小房"}, {"name": "カニかま", "quantity": "5", "unit": "本"}, {"name": "水", "quantity": "4", "unit": "ml"}, {"name": "顆粒鶏がらスープ", "quantity": "1", "unit": "小さじ"}, {"name": "しょう油", "quantity": "1", "unit": "小さじ"}, {"name": "しょうが(チューブ)", "quantity": "6", "unit": "cm"}, {"name": "塩", "quantity": "0", "unit": "ひとつまみ"}, {"name": "水溶き片栗粉", "quantity": "2", "unit": "水大さじ"}]', '["小房のブロッコリーをさらに半分ほどの大きさに切り分けます。カニかまは３分の１の長さに切ってほぐすのと、そのままの長さでほぐすのとに分けると「雰囲気」が出ます(笑)", "鍋に水を入れて火にかけ、沸いたら①を加え、中火でブロッコリーが柔らかくなるまで2～3分茹でます。", "鶏がらスープ・しょう油・ショウガ・塩を加えて調味します。", "豆腐をスプーンで大きくすくいながら加えます。豆腐が芯まで温まるまで2～3分煮ます。", "水溶き片栗粉を少しずつ加え、豆腐が崩れないようにやさしく混ぜ、さらに1～2分煮たら出来上がりです♪"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "4", "味付けなしの手抜き料理、さば味噌煮缶のキムチ豆腐", "https://recipe.rakuten.co.jp/recipe/1030004198/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/952151d423813ecf53be714a53b8b2afbb8b6dba.39.2.3.2.jpg", "300円前後", 
        "約10分", "13-109-531", 
        "缶詰", "2", 
        '[{"name": "さば味噌煮缶", "quantity": "1", "unit": "缶（"}, {"name": "キムチ（辛口）", "quantity": "2", "unit": "g"}, {"name": "豆腐(木綿）", "quantity": "3", "unit": "丁（"}, {"name": "青ネギ", "quantity": "1", "unit": "本"}]', '["豆腐は８つに食べやすく切る（お皿に乗せておくと水がドンドン出てくるので、ドンドン捨てる）キムチはざく切り。青ネギは小口切り。", "鍋に豆腐を並べ、その上にキムチ、さば缶の身を大きくほぐしながら、汁も全部入れる。空いた缶に水を1/4ほど入れて、上から回しかけ、フタを閉めて中火で煮る。", "５～６分して、全体に火がまわり、豆腐が煮えたら火を止める", "お皿に取り分け、上に小口切りにした青ネギを乗せて出来上がり。"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "2", "鶏もも肉の至高のパスタ☆簡単美味しい☆", "https://recipe.rakuten.co.jp/recipe/1920002010/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/7f9db50042d453495f9b06515cb30c28b4540f7e.05.2.3.2.jpg", "500円前後", 
        "約30分", "13-109-1638", 
        "トマト缶", "2", 
        '[{"name": "パスタ", "quantity": "2", "unit": "g"}, {"name": "鶏もも肉（２００gぐらい）", "quantity": "1", "unit": "枚"}, {"name": "タマネギ", "quantity": "0", "unit": "半分"}, {"name": "にんにく", "quantity": "1", "unit": "かけ"}, {"name": "オリーブオイル（炒めで２、味付けで１）", "quantity": "3", "unit": "大さじ"}, {"name": "トマト缶", "quantity": "1", "unit": "缶"}, {"name": "コンソメ（顆粒なら小さじ２）", "quantity": "1", "unit": "個"}, {"name": "塩", "quantity": "0", "unit": "適量"}, {"name": "コショウ", "quantity": "0", "unit": "適量"}, {"name": "■あれば美味しい材料（なくてもいいよ）■", "quantity": "0", "unit": 0}, {"name": "ほうれん草", "quantity": "4", "unit": "株ぐらい"}, {"name": "しめじ", "quantity": "2", "unit": "／"}]', '["大さじ２のオリーブオイルにみじん切りのニンニクを香りが出るまで炒めます。そこに鶏もも肉を投入。両面に少し焦げ目ができるまで焼きます。", "千切りのタマネギ、４等分ぐらいしたほうれん草、ばらばらにしたしめじを投入し炒めます。", "全体的にしんなりしてきたらトマト缶をドバっと。コンソメも入れます。木ベラ等でトマトを潰して下さい。", "塩・コショウをして、中火ぐらいでグッツグツグツと水分を飛ばしてとろみが出るまで煮詰めます。", "とろみが出てきたところで味をととのえます。オリーブオイル大さじ１をいれ、味見をしながら塩を入れます。", "最高の味付けになれば、パスタを入れてよく絡めます。", "綺麗に盛り付ければ出来上がり。お好みで、バジル、パセリ、タバスコ、パルメザンチーズで食せば幸せ(*´∀｀)", "☆祝・Pickupレシピ☆～2011年8月29日～Pickupレシピに選んで頂きました♪本当に嬉しい限りでございます。この調子で、がんばってまいります。", "☆「鶏もも肉」人気順No1☆いつのまにか鶏もも肉のレシピ人気順１位という名誉ある栄冠を頂いておりました！ありがとうございます★"]'
    );
INSERT INTO recipes (
        recipeRank, recipeTitle, recipeUrl, foodImageUrl, 
        recipeCost, recipeIndication, categoryId, 
        categoryName, serving_size, ingredients, recipe
    ) VALUES (
        "3", "乾パン消費にいかが？おいしいキッシュ！", "https://recipe.rakuten.co.jp/recipe/1520024395/", 
        "https://image.space.rakuten.co.jp/d/strg/ctrl/3/ef46c7dcbb8fedf207ac04ae178de1f2623abd26.57.9.3.3.jpg", "500円前後", 
        "1時間以上", "13-109-1639", 
        "鮭缶", "4", 
        '[{"name": "鮭缶", "quantity": "1", "unit": "缶"}, {"name": "しめじ", "quantity": "1", "unit": "本"}, {"name": "長ネギ", "quantity": "1", "unit": "本"}, {"name": "ピザ用チーズ", "quantity": "2", "unit": "g"}, {"name": "卵", "quantity": "1", "unit": "個"}, {"name": "牛乳", "quantity": "1", "unit": "大"}, {"name": "みそ", "quantity": "1", "unit": "小"}, {"name": "塩胡椒", "quantity": "0", "unit": "少々"}, {"name": "サラダ油", "quantity": "2", "unit": "小"}, {"name": "バター", "quantity": "3", "unit": "g"}, {"name": "【キッシュ土台】", "quantity": "0", "unit": 0}, {"name": "乾パン", "quantity": "9", "unit": "缶(約"}, {"name": "バター", "quantity": "4", "unit": "g"}, {"name": "牛乳", "quantity": "2", "unit": "大"}]', '["乾パンは袋2重にしたところに入れる(袋はジップロックなど丈夫なものがよい)。麺棒で叩いたり、麺棒で転がして粉々にする。", "最低でもこれぐらい粉々にする。", "乾パンの入った袋にレンジ加熱で溶かした(600W1分)バター、牛乳を入れてよく揉む。", "バター(3g)をグラタン皿に塗る(直径15cm程度)。もちろんタルト皿でもOK。そこに乾パンを敷き詰める(5mm程度の厚みになるようにする)。隙間のないように！", "ラップをかけて冷蔵庫で固くなるまで冷やす。", "長ネギは全てを小口切りにする。しめじは小房に分けてから石づきを切り落とす。ばらばらにほぐしておく。", "サラダ油をしいたフライパンで長ネギ、しめじを炒める。そこに鮭缶を加えて砕きながら炒める。最後に味噌も加えて混ぜ合わせたら火を止める。", "炒めた具材と卵、牛乳、ピザ用チーズ、塩胡椒を混ぜ合わせる。それをキッシュ土台に流し入れる。", "200度に予熱したオーブンで200度25分焼く。", "型から取り出す。冷めてからのほうが崩れにくいです。好きな大きさに切って召し上がれ！", "好きな大きさに切って召し上がれ！冷めてしまったらホイルをかけてトースターで温めましょう。土台柔らかめにしたい時は、トースターでなくレンチンでラップして温め直すといいです。", "「れもん kitchen」というYouTubeチャンネルにて作り方を詳しく説明しているので、お時間ある方は是非ご覧ください♪"]'
    );



-- +migrate Down
DROP TABLE `recipes`;
