test_array = [
  ["parent", "レディース"],
  ["child", "トップス"],
  ["grand-child", "Tシャツ/カットソー(半袖/袖なし)"],
  ["grand-child", "Tシャツ/カットソー(七分/長袖)"],
  ["grand-child", "シャツ/ブラウス(半袖/袖なし)"],
  ["grand-child", "シャツ/ブラウス(七分/長袖)"],
  ["grand-child", "ポロシャツ"],
  ["grand-child", "キャミソール"],
  ["grand-child", "タンクトップ"],
  ["grand-child", "ホルターネック"],
  ["grand-child", "ニット/セーター"],
  ["grand-child", "チュニック"],
  ["grand-child", "カーディガン/ボレロ"],
  ["grand-child", "アンサンブル"],
  ["grand-child", "ベスト/ジレ"],
  ["grand-child", "パーカー"],
  ["child", "ジャケット/アウター"],
  ["grand-child", "テーラードジャケット"],
  ["grand-child", "ノーカラージャケット"],
  ["grand-child", "Gジャン/デニムジャケット"],
  ["grand-child", "レザージャケット"],
  ["grand-child", "ダウンジャケット"],
  ["grand-child", "ライダースジャケット"],
  ["grand-child", "ミリタリージャケット"],
  ["grand-child", "ダウンベスト"],
  ["grand-child", "ジャンパー/ブルゾン"],
  ["grand-child", "ポンチョ"],
  ["grand-child", "ロングコート"],
  ["grand-child", "トレンチコート"],
  ["grand-child", "ダッフルコート"],
  ["grand-child", "ピーコート"],
  ["child", "パンツ"],
  ["grand-child", "デニム/ジーンズ"],
  ["grand-child", "ショートパンツ"],
  ["grand-child", "カジュアルパンツ"],
  ["grand-child", "ハーフパンツ"],
  ["grand-child", "チノパン"],
  ["grand-child", "ワークパンツ/カーゴパンツ"],
  ["grand-child", "クロップドパンツ"],
  ["grand-child", "サロペット/オーバーオール"],
  ["grand-child", "オールインワン"],
  ["grand-child", "サルエルパンツ"],
  ["grand-child", "ガウチョパンツ"],
  ["grand-child", "その他"],
  ["child", "スカート"],
  ["grand-child", "ミニスカート"],
  ["grand-child", "ひざ丈スカート"],
  ["grand-child", "ロングスカート"],
  ["grand-child", "キュロット"],
  ["grand-child", "その他"],
  ["child", "ワンピース"],
  ["grand-child", "ミニワンピース"],
  ["grand-child", "ひざ丈ワンピース"],
  ["grand-child", "ロングワンピース"],
  ["grand-child", "その他"],
  ["child", "靴"],
  ["grand-child", "ハイヒール/パンプス"],
  ["grand-child", "ブーツ"],
  ["grand-child", "サンダル"],
  ["grand-child", "スニーカー"],
  ["grand-child", "ミュール"],
  ["grand-child", "モカシン"],
  ["grand-child", "ローファー/革靴"],
  ["grand-child", "フラットシューズ/バレエシューズ"],
  ["grand-child", "長靴/レインシューズ"],
  ["grand-child", "その他"],
  ["child", "ルームウェア/パジャマ"],
  ["grand-child", "パジャマ"],
  ["grand-child", "ルームウェア"],
  ["child", "レッグウェア"],
  ["grand-child", "ソックス"],
  ["grand-child", "スパッツ/レギンス"],
  ["grand-child", "ストッキング/タイツ"],
  ["grand-child", "レッグウォーマー"],
  ["grand-child", "その他"],
  ["child", "帽子"],
  ["grand-child", "ニットキャップ/ビーニー"],
  ["grand-child", "ハット"],
  ["grand-child", "ハンチング/ベレー帽"],
  ["grand-child", "キャップ"],
  ["grand-child", "キャスケット"],
  ["grand-child", "麦わら帽子"],
  ["grand-child", "その他"],
  ["child", "バッグ"],
  ["grand-child", "ハンドバッグ"],
  ["grand-child", "トートバッグ"],
  ["grand-child", "エコバッグ"],
  ["grand-child", "リュック/バックパック"],
  ["grand-child", "ボストンバッグ"],
  ["grand-child", "スポーツバッグ"],
  ["grand-child", "ショルダーバッグ"],
  ["grand-child", "クラッチバッグ"],
  ["grand-child", "ポーチ/バニティ"],
  ["grand-child", "ボディバッグ/ウェストバッグ"],
  ["grand-child", "マザーズバッグ"],
  ["grand-child", "メッセンジャーバッグ"],
  ["grand-child", "ビジネスバッグ"],
  ["grand-child", "旅行用バッグ/キャリーバッグ"],
  ["child", "アクセサリー"],
  ["grand-child", "ネックレス"],
  ["grand-child", "ブレスレット"],
  ["grand-child", "バングル/リストバンド"],
  ["grand-child", "リング"],
  ["grand-child", "ピアス(片耳用)"],
  ["grand-child", "ピアス(両耳用)"],
  ["grand-child", "イヤリング"],
  ["grand-child", "アンクレット"],
  ["grand-child", "ブローチ/コサージュ"],
  ["grand-child", "チャーム"],
  ["grand-child", "その他"],
  ["child", "ヘアアクセサリー"],
  ["grand-child", "ヘアゴム/シュシュ"],
  ["grand-child", "ヘアバンド/カチューシャ"],
  ["grand-child", "ヘアピン"],
  ["grand-child", "その他"],
  ["child", "小物"],
  ["grand-child", "長財布"],
  ["grand-child", "折り財布"],
  ["grand-child", "コインケース/小銭入れ"],
  ["grand-child", "名刺入れ/定期入れ"],
  ["grand-child", "キーケース"],
  ["grand-child", "キーホルダー"],
  ["grand-child", "手袋/アームカバー"],
  ["grand-child", "ハンカチ"],
  ["grand-child", "ベルト"],
  ["grand-child", "マフラー/ショール"],
  ["grand-child", "ストール/スヌード"],
  ["grand-child", "バンダナ/スカーフ"],
  ["grand-child", "ネックウォーマー"],
  ["grand-child", "サスペンダー"],
  ["child", "時計"],
  ["grand-child", "腕時計(アナログ)"],
  ["grand-child", "腕時計(デジタル)"],
  ["grand-child", "ラバーベルト"],
  ["grand-child", "レザーベルト"],
  ["grand-child", "金属ベルト"],
  ["grand-child", "その他"],
  ["parent", "メンズ"],
  ["child", "トップス"],
  ["grand-child", "Tシャツ/カットソー(半袖/袖なし)"],
  ["grand-child", "Tシャツ/カットソー(七分/長袖)"],
  ["grand-child", "シャツ"],
  ["grand-child", "ポロシャツ"],
  ["grand-child", "タンクトップ"],
  ["grand-child", "ニット/セーター"],
  ["grand-child", "パーカー"],
  ["grand-child", "カーディガン"],
  ["grand-child", "スウェット"],
  ["grand-child", "ジャージ"],
  ["grand-child", "ベスト"],
  ["grand-child", "その他"],
  ["child", "ジャケット/アウター"],
  ["grand-child", "テーラードジャケット"],
  ["grand-child", "ノーカラージャケット"],
  ["grand-child", "Gジャン/デニムジャケット"],
  ["grand-child", "レザージャケット"],
  ["grand-child", "ダウンジャケット"],
  ["grand-child", "ライダースジャケット"],
  ["grand-child", "ミリタリージャケット"],
  ["grand-child", "ナイロンジャケット"],
  ["grand-child", "フライトジャケット"],
  ["grand-child", "ダッフルコート"],
  ["grand-child", "ピーコート"],
  ["grand-child", "ステンカラーコート"],
  ["grand-child", "トレンチコート"],
  ["grand-child", "モッズコート"],
  ["child", "パンツ"],
  ["grand-child", "デニム/ジーンズ"],
  ["grand-child", "ワークパンツ/カーゴパンツ"],
  ["grand-child", "スラックス"],
  ["grand-child", "チノパン"],
  ["grand-child", "ショートパンツ"],
  ["grand-child", "ペインターパンツ"],
  ["grand-child", "サルエルパンツ"],
  ["grand-child", "オーバーオール"],
  ["grand-child", "その他"],
  ["child", "靴"],
  ["grand-child", "スニーカー"],
  ["grand-child", "サンダル"],
  ["grand-child", "ブーツ"],
  ["grand-child", "モカシン"],
  ["grand-child", "ドレス/ビジネス"],
  ["grand-child", "長靴/レインシューズ"],
  ["grand-child", "デッキシューズ"],
  ["grand-child", "その他"],
  ["child", "バッグ"],
  ["grand-child", "ショルダーバッグ"],
  ["grand-child", "トートバッグ"],
  ["grand-child", "ボストンバッグ"],
  ["grand-child", "リュック/バックパック"],
  ["grand-child", "ウエストポーチ"],
  ["grand-child", "ボディーバッグ"],
  ["grand-child", "ドラムバッグ"],
  ["grand-child", "ビジネスバッグ"],
  ["grand-child", "トラベルバッグ"],
  ["grand-child", "メッセンジャーバッグ"],
  ["grand-child", "エコバッグ"],
  ["grand-child", "その他"],
  ["child", "スーツ"],
  ["grand-child", "スーツジャケット"],
  ["grand-child", "スーツベスト"],
  ["grand-child", "スラックス"],
  ["grand-child", "セットアップ"],
  ["grand-child", "その他"],
  ["child", "帽子"],
  ["grand-child", "キャップ"],
  ["grand-child", "ハット"],
  ["grand-child", "ニットキャップ/ビーニー"],
  ["grand-child", "ハンチング/ベレー帽"],
  ["grand-child", "キャスケット"],
  ["grand-child", "サンバイザー"],
  ["grand-child", "その他"],
  ["child", "アクセサリー"],
  ["grand-child", "ネックレス"],
  ["grand-child", "ブレスレット"],
  ["grand-child", "バングル/リストバンド"],
  ["grand-child", "リング"],
  ["grand-child", "ピアス(片耳用)"],
  ["grand-child", "ピアス(両耳用)"],
  ["grand-child", "アンクレット"],
  ["grand-child", "その他"],
  ["child", "小物"],
  ["grand-child", "長財布"],
  ["grand-child", "折り財布"],
  ["grand-child", "マネークリップ"],
  ["grand-child", "コインケース/小銭入れ"],
  ["grand-child", "名刺入れ/定期入れ"],
  ["grand-child", "キーケース"],
  ["grand-child", "キーホルダー"],
  ["grand-child", "ネクタイ"],
  ["grand-child", "手袋"],
  ["grand-child", "ハンカチ"],
  ["grand-child", "ベルト"],
  ["grand-child", "マフラー"],
  ["grand-child", "ストール"],
  ["grand-child", "バンダナ"],
  ["child", "時計"],
  ["grand-child", "腕時計(アナログ)"],
  ["grand-child", "腕時計(デジタル)"],
  ["grand-child", "ラバーベルト"],
  ["grand-child", "レザーベルト"],
  ["grand-child", "金属ベルト"],
  ["grand-child", "その他"],
  ["child", "水着"],
  ["grand-child", "一般水着"],
  ["grand-child", "スポーツ用"],
  ["grand-child", "アクセサリー"],
  ["grand-child", "その他"],
  ["child", "レッグウェア"],
  ["grand-child", "ソックス"],
  ["grand-child", "レギンス/スパッツ"],
  ["grand-child", "レッグウォーマー"],
  ["grand-child", "その他"],
  ["child", "アンダーウェア"],
  ["grand-child", "トランクス"],
  ["grand-child", "ボクサーパンツ"],
  ["grand-child", "その他"],
  ["child", "その他"],
  ["parent", "ベビー・キッズ"],
  ["child", "ベビー服(女の子用)~95cm"],
  ["grand-child", "トップス"],
  ["grand-child", "アウター"],
  ["grand-child", "パンツ"],
  ["grand-child", "スカート"],
  ["grand-child", "ワンピース"],
  ["grand-child", "ベビードレス"],
  ["grand-child", "おくるみ"],
  ["grand-child", "下着/肌着"],
  ["grand-child", "パジャマ"],
  ["grand-child", "ロンパース"],
  ["grand-child", "その他"],
  ["child", "ベビー服(男の子用)~95cm"],
  ["grand-child", "トップス"],
  ["grand-child", "アウター"],
  ["grand-child", "パンツ"],
  ["grand-child", "おくるみ"],
  ["grand-child", "下着/肌着"],
  ["grand-child", "パジャマ"],
  ["grand-child", "ロンパース"],
  ["grand-child", "その他"],
  ["child", "ベビー服(男女兼用)~95cm"],
  ["grand-child", "トップス"],
  ["grand-child", "アウター"],
  ["grand-child", "パンツ"],
  ["grand-child", "おくるみ"],
  ["grand-child", "下着/肌着"],
  ["grand-child", "パジャマ"],
  ["grand-child", "ロンパース"],
  ["grand-child", "その他"],
  ["child", "キッズ服(女の子用) 100cm~"],
  ["grand-child", "コート"],
  ["grand-child", "ジャケット/上着"],
  ["grand-child", "トップス(Tシャツ/カットソー)"],
  ["grand-child", "トップス(トレーナー)"],
  ["grand-child", "トップス(チュニック)"],
  ["grand-child", "トップス(タンクトップ)"],
  ["grand-child", "トップス(その他)"],
  ["grand-child", "スカート"],
  ["grand-child", "パンツ"],
  ["grand-child", "ワンピース"],
  ["grand-child", "セットアップ"],
  ["grand-child", "パジャマ"],
  ["grand-child", "フォーマル/ドレス"],
  ["grand-child", "和服"],
  ["child", "キッズ服(男の子用) 100cm~"],
  ["grand-child", "コート"],
  ["grand-child", "ジャケット/上着"],
  ["grand-child", "トップス(Tシャツ/カットソー)"],
  ["grand-child", "トップス(トレーナー)"],
  ["grand-child", "トップス(その他)"],
  ["grand-child", "パンツ"],
  ["grand-child", "セットアップ"],
  ["grand-child", "パジャマ"],
  ["grand-child", "フォーマル/ドレス"],
  ["grand-child", "和服"],
  ["grand-child", "浴衣"],
  ["grand-child", "甚平"],
  ["grand-child", "水着"],
  ["grand-child", "その他"],
  ["child", "キッズ服(男女兼用) 100cm~"],
  ["grand-child", "コート"],
  ["grand-child", "ジャケット/上着"],
  ["grand-child", "トップス(Tシャツ/カットソー)"],
  ["grand-child", "トップス(トレーナー)"],
  ["grand-child", "トップス(その他)"],
  ["grand-child", "ボトムス"],
  ["grand-child", "パジャマ"],
  ["grand-child", "その他"],
  ["child", "キッズ靴"],
  ["grand-child", "スニーカー"],
  ["grand-child", "サンダル"],
  ["grand-child", "ブーツ"],
  ["grand-child", "長靴"],
  ["grand-child", "その他"],
  ["child", "子ども用ファッション小物"],
  ["grand-child", "靴下/スパッツ"],
  ["grand-child", "帽子"],
  ["grand-child", "エプロン"],
  ["grand-child", "サスペンダー"],
  ["grand-child", "タイツ"],
  ["grand-child", "ハンカチ"],
  ["grand-child", "バンダナ"],
  ["grand-child", "ベルト"],
  ["grand-child", "マフラー"],
  ["grand-child", "傘"],
  ["grand-child", "手袋"],
  ["grand-child", "スタイ"],
  ["grand-child", "バッグ"],
  ["grand-child", "その他"],
  ["child", "おむつ/トイレ/バス"],
  ["grand-child", "おむつ用品"],
  ["grand-child", "おまる/補助便座"],
  ["grand-child", "トレーニングパンツ"],
  ["grand-child", "ベビーバス"],
  ["grand-child", "お風呂用品"],
  ["grand-child", "その他"],
  ["child", "外出/移動用品"],
  ["grand-child", "ベビーカー"],
  ["grand-child", "抱っこひも/スリング"],
  ["grand-child", "チャイルドシート"],
  ["grand-child", "その他"],
  ["child", "授乳/食事"],
  ["grand-child", "ミルク"],
  ["grand-child", "ベビーフード"],
  ["grand-child", "ベビー用食器"],
  ["grand-child", "その他"],
  ["child", "ベビー家具/寝具/室内用品"],
  ["grand-child", "ベッド"],
  ["grand-child", "布団/毛布"],
  ["grand-child", "イス"],
  ["grand-child", "たんす"],
  ["grand-child", "その他"],
  ["child", "おもちゃ"],
  ["grand-child", "おふろのおもちゃ"],
  ["grand-child", "がらがら"],
  ["grand-child", "オルゴール"],
  ["grand-child", "ベビージム"],
  ["grand-child", "手押し車/カタカタ"],
  ["grand-child", "知育玩具"],
  ["grand-child", "その他"],
  ["child", "行事/記念品"],
  ["grand-child", "お宮参り用品"],
  ["grand-child", "お食い初め用品"],
  ["grand-child", "アルバム"],
  ["grand-child", "手形/足形"],
  ["grand-child", "その他"],
  ["parent", "インテリア・住まい・小物"],
  ["child", "キッチン/食器"],
  ["grand-child", "食器"],
  ["grand-child", "調理器具"],
  ["grand-child", "収納/キッチン雑貨"],
  ["grand-child", "弁当用品"],
  ["grand-child", "カトラリー(スプーン等)"],
  ["grand-child", "テーブル用品"],
  ["grand-child", "容器"],
  ["grand-child", "エプロン"],
  ["grand-child", "アルコールグッズ"],
  ["grand-child", "浄水機"],
  ["grand-child", "その他"],
  ["child", "ベッド/マットレス"],
  ["grand-child", "セミシングルベッド"],
  ["grand-child", "シングルベッド"],
  ["grand-child", "セミダブルベッド"],
  ["grand-child", "ダブルベッド"],
  ["grand-child", "ワイドダブルベッド"],
  ["grand-child", "クイーンベッド"],
  ["grand-child", "キングベッド"],
  ["grand-child", "脚付きマットレスベッド"],
  ["grand-child", "マットレス"],
  ["grand-child", "すのこベッド"],
  ["grand-child", "ロフトベッド/システムベッド"],
  ["grand-child", "簡易ベッド/折りたたみベッド"],
  ["grand-child", "収納付き"],
  ["grand-child", "その他"],
  ["child", "ソファ/ソファベッド"],
  ["grand-child", "ソファセット"],
  ["grand-child", "シングルソファ"],
  ["grand-child", "ラブソファ"],
  ["grand-child", "トリプルソファ"],
  ["grand-child", "オットマン"],
  ["grand-child", "コーナーソファ"],
  ["grand-child", "ビーズソファ/クッションソファ"],
  ["grand-child", "ローソファ/フロアソファ"],
  ["grand-child", "ソファベッド"],
  ["grand-child", "応接セット"],
  ["grand-child", "ソファカバー"],
  ["grand-child", "リクライニングソファ"],
  ["grand-child", "その他"],
  ["child", "椅子/チェア"],
  ["grand-child", "一般"],
  ["grand-child", "スツール"],
  ["grand-child", "ダイニングチェア"],
  ["grand-child", "ハイバックチェア"],
  ["grand-child", "ロッキングチェア"],
  ["grand-child", "座椅子"],
  ["grand-child", "折り畳みイス"],
  ["grand-child", "デスクチェア"],
  ["grand-child", "その他"],
  ["child", "机/テーブル"],
  ["grand-child", "こたつ"],
  ["grand-child", "カウンターテーブル"],
  ["grand-child", "サイドテーブル"],
  ["grand-child", "センターテーブル"],
  ["grand-child", "ダイニングテーブル"],
  ["grand-child", "座卓/ちゃぶ台"],
  ["grand-child", "アウトドア用"],
  ["grand-child", "パソコン用"],
  ["grand-child", "事務机/学習机"],
  ["grand-child", "その他"],
  ["child", "収納家具"],
  ["grand-child", "リビング収納"],
  ["grand-child", "キッチン収納"],
  ["grand-child", "玄関/屋外収納"],
  ["grand-child", "バス/トイレ収納"],
  ["grand-child", "本収納"],
  ["grand-child", "本/CD/DVD収納"],
  ["grand-child", "洋服タンス/押入れ収納"],
  ["grand-child", "電話台/ファックス台"],
  ["grand-child", "ドレッサー/鏡台"],
  ["grand-child", "棚/ラック"],
  ["grand-child", "ケース/ボックス"],
  ["grand-child", "その他"],
  ["child", "ラグ/カーペット/マット"],
  ["grand-child", "ラグ"],
  ["grand-child", "カーペット"],
  ["grand-child", "ホットカーペット"],
  ["grand-child", "玄関/キッチンマット"],
  ["grand-child", "トイレ/バスマット"],
  ["grand-child", "その他"],
  ["child", "カーテン/ブラインド"],
  ["grand-child", "カーテン"],
  ["grand-child", "ブラインド"],
  ["grand-child", "ロールスクリーン"],
  ["grand-child", "のれん"],
  ["grand-child", "その他"],
  ["child", "ライト/照明"],
  ["grand-child", "蛍光灯/電球"],
  ["grand-child", "天井照明"],
  ["grand-child", "フロアスタンド"],
  ["grand-child", "その他"],
  ["child", "寝具"],
  ["grand-child", "布団/毛布"],
  ["grand-child", "枕"],
  ["grand-child", "シーツ/カバー"],
  ["grand-child", "その他"],
  ["child", "インテリア小物"],
  ["grand-child", "ごみ箱"],
  ["grand-child", "ウェルカムボード"],
  ["grand-child", "オルゴール"],
  ["grand-child", "クッション"],
  ["grand-child", "クッションカバー"],
  ["grand-child", "スリッパラック"],
  ["grand-child", "ティッシュボックス"],
  ["grand-child", "バスケット/かご"],
  ["grand-child", "フォトフレーム"],
  ["grand-child", "マガジンラック"],
  ["grand-child", "モビール"],
  ["grand-child", "花瓶"],
  ["grand-child", "灰皿"],
  ["grand-child", "傘立て"],
  ["child", "季節/年中行事"],
  ["grand-child", "正月"],
  ["grand-child", "成人式"],
  ["grand-child", "バレンタインデー"],
  ["grand-child", "ひな祭り"],
  ["grand-child", "子どもの日"],
  ["grand-child", "母の日"],
  ["grand-child", "父の日"],
  ["grand-child", "サマーギフト/お中元"],
  ["grand-child", "夏/夏休み"],
  ["grand-child", "ハロウィン"],
  ["grand-child", "敬老の日"],
  ["grand-child", "七五三"],
  ["grand-child", "お歳暮"],
  ["grand-child", "クリスマス"],
  ["child", "その他"],
  ["parent", "本・音楽・ゲーム"],
  ["child", "本"],
  ["grand-child", "文学/小説"],
  ["grand-child", "人文/社会"],
  ["grand-child", "ノンフィクション/教養"],
  ["grand-child", "地図/旅行ガイド"],
  ["grand-child", "ビジネス/経済"],
  ["grand-child", "健康/医学"],
  ["grand-child", "コンピュータ/IT"],
  ["grand-child", "趣味/スポーツ/実用"],
  ["grand-child", "住まい/暮らし/子育て"],
  ["grand-child", "アート/エンタメ"],
  ["grand-child", "洋書"],
  ["grand-child", "絵本"],
  ["grand-child", "参考書"],
  ["grand-child", "その他"],
  ["child", "漫画"],
  ["grand-child", "全巻セット"],
  ["grand-child", "少年漫画"],
  ["grand-child", "少女漫画"],
  ["grand-child", "青年漫画"],
  ["grand-child", "女性漫画"],
  ["grand-child", "同人誌"],
  ["grand-child", "その他"],
  ["child", "雑誌"],
  ["grand-child", "アート/エンタメ/ホビー"],
  ["grand-child", "ファッション"],
  ["grand-child", "ニュース/総合"],
  ["grand-child", "趣味/スポーツ"],
  ["grand-child", "その他"],
  ["child", "CD"],
  ["grand-child", "邦楽"],
  ["grand-child", "洋楽"],
  ["grand-child", "アニメ"],
  ["grand-child", "クラシック"],
  ["grand-child", "K-POP/アジア"],
  ["grand-child", "キッズ/ファミリー"],
  ["grand-child", "その他"],
  ["child", "DVD/ブルーレイ"],
  ["grand-child", "外国映画"],
  ["grand-child", "日本映画"],
  ["grand-child", "アニメ"],
  ["grand-child", "TVドラマ"],
  ["grand-child", "ミュージック"],
  ["grand-child", "お笑い/バラエティ"],
  ["grand-child", "スポーツ/フィットネス"],
  ["grand-child", "キッズ/ファミリー"],
  ["grand-child", "その他"],
  ["child", "レコード"],
  ["grand-child", "邦楽"],
  ["grand-child", "洋楽"],
  ["grand-child", "その他"],
  ["child", "テレビゲーム"],
  ["grand-child", "家庭用ゲーム本体"],
  ["grand-child", "家庭用ゲームソフト"],
  ["grand-child", "携帯用ゲーム本体"],
  ["grand-child", "携帯用ゲームソフト"],
  ["grand-child", "PCゲーム"],
  ["grand-child", "その他"],
  ["parent", "おもちゃ・ホビー・グッズ"],
  ["child", "おもちゃ"],
  ["grand-child", "キャラクターグッズ"],
  ["grand-child", "ぬいぐるみ"],
  ["grand-child", "小物/アクセサリー"],
  ["grand-child", "模型/プラモデル"],
  ["grand-child", "ミニカー"],
  ["grand-child", "トイラジコン"],
  ["grand-child", "プラモデル"],
  ["grand-child", "ホビーラジコン"],
  ["grand-child", "鉄道模型"],
  ["grand-child", "その他"],
  ["child", "タレントグッズ"],
  ["grand-child", "アイドル"],
  ["grand-child", "ミュージシャン"],
  ["grand-child", "タレント/お笑い芸人"],
  ["grand-child", "スポーツ選手"],
  ["grand-child", "その他"],
  ["child", "コミック/アニメグッズ"],
  ["grand-child", "ストラップ"],
  ["grand-child", "キーホルダー"],
  ["grand-child", "バッジ"],
  ["grand-child", "カード"],
  ["grand-child", "クリアファイル"],
  ["grand-child", "ポスター"],
  ["grand-child", "タオル"],
  ["grand-child", "その他"],
  ["child", "トレーディングカード"],
  ["grand-child", "遊戯王"],
  ["grand-child", "マジック：ザ・ギャザリング"],
  ["grand-child", "ポケモンカードゲーム"],
  ["grand-child", "デュエルマスターズ"],
  ["grand-child", "バトルスピリッツ"],
  ["grand-child", "プリパラ"],
  ["grand-child", "アイカツ"],
  ["grand-child", "カードファイト!! ヴァンガード"],
  ["grand-child", "ヴァイスシュヴァルツ"],
  ["grand-child", "プロ野球オーナーズリーグ"],
  ["grand-child", "ベースボールヒーローズ"],
  ["grand-child", "ドラゴンボール"],
  ["grand-child", "スリーブ"],
  ["grand-child", "その他"],
  ["child", "フィギュア"],
  ["grand-child", "コミック/アニメ"],
  ["grand-child", "特撮"],
  ["grand-child", "ゲームキャラクター"],
  ["grand-child", "SF/ファンタジー/ホラー"],
  ["grand-child", "アメコミ"],
  ["grand-child", "スポーツ"],
  ["grand-child", "ミリタリー"],
  ["grand-child", "その他"],
  ["child", "楽器/器材"],
  ["grand-child", "エレキギター"],
  ["grand-child", "アコースティックギター"],
  ["grand-child", "ベース"],
  ["grand-child", "エフェクター"],
  ["grand-child", "アンプ"],
  ["grand-child", "弦楽器"],
  ["grand-child", "管楽器"],
  ["grand-child", "鍵盤楽器"],
  ["grand-child", "打楽器"],
  ["grand-child", "和楽器"],
  ["grand-child", "楽譜/スコア"],
  ["grand-child", "レコーディング/PA機器"],
  ["grand-child", "DJ機器"],
  ["grand-child", "DTM/DAW"],
  ["child", "コレクション"],
  ["grand-child", "武具"],
  ["grand-child", "切手/官製はがき"],
  ["grand-child", "貨幣/金貨/銀貨/記念硬貨"],
  ["grand-child", "印刷物"],
  ["grand-child", "ノベルティグッズ"],
  ["grand-child", "その他"],
  ["child", "ミリタリー"],
  ["grand-child", "トイガン"],
  ["grand-child", "個人装備"],
  ["grand-child", "その他"],
  ["child", "美術品"],
  ["grand-child", "陶芸"],
  ["grand-child", "ガラス"],
  ["grand-child", "漆芸"],
  ["grand-child", "金属工芸"],
  ["grand-child", "絵画/タペストリ"],
  ["grand-child", "版画"],
  ["grand-child", "彫刻/オブジェクト"],
  ["grand-child", "書"],
  ["grand-child", "写真"],
  ["grand-child", "その他"],
  ["child", "アート用品"],
  ["grand-child", "画材"],
  ["grand-child", "額縁"],
  ["grand-child", "その他"],
  ["child", "その他"],
  ["grand-child", "トランプ/UNO"],
  ["grand-child", "カルタ/百人一首"],
  ["grand-child", "ダーツ"],
  ["grand-child", "ビリヤード"],
  ["grand-child", "麻雀"],
  ["grand-child", "パズル/ジグソーパズル"],
  ["grand-child", "囲碁/将棋"],
  ["grand-child", "オセロ/チェス"],
  ["grand-child", "人生ゲーム"],
  ["grand-child", "野球/サッカーゲーム"],
  ["grand-child", "スポーツ"],
  ["grand-child", "三輪車/乗り物"],
  ["grand-child", "ヨーヨー"],
  ["grand-child", "模型製作用品"],
  ["parent", "コスメ・香水・美容"],
  ["child", "ベースメイク"],
  ["grand-child", "ファンデーション"],
  ["grand-child", "化粧下地"],
  ["grand-child", "コントロールカラー"],
  ["grand-child", "BBクリーム"],
  ["grand-child", "CCクリーム"],
  ["grand-child", "コンシーラー"],
  ["grand-child", "フェイスパウダー"],
  ["grand-child", "トライアルセット/サンプル"],
  ["grand-child", "その他"],
  ["child", "メイクアップ"],
  ["grand-child", "アイシャドウ"],
  ["grand-child", "口紅"],
  ["grand-child", "リップグロス"],
  ["grand-child", "リップライナー"],
  ["grand-child", "チーク"],
  ["grand-child", "フェイスカラー"],
  ["grand-child", "マスカラ"],
  ["grand-child", "アイライナー"],
  ["grand-child", "つけまつげ"],
  ["grand-child", "アイブロウペンシル"],
  ["grand-child", "パウダーアイブロウ"],
  ["grand-child", "眉マスカラ"],
  ["grand-child", "トライアルセット/サンプル"],
  ["grand-child", "メイク道具/化粧小物"],
  ["child", "ネイルケア"],
  ["grand-child", "ネイルカラー"],
  ["grand-child", "カラージェル"],
  ["grand-child", "ネイルベースコート/トップコート"],
  ["grand-child", "ネイルアート用品"],
  ["grand-child", "ネイルパーツ"],
  ["grand-child", "ネイルチップ/付け爪"],
  ["grand-child", "手入れ用具"],
  ["grand-child", "除光液"],
  ["grand-child", "その他"],
  ["child", "香水"],
  ["grand-child", "香水(女性用)"],
  ["grand-child", "香水(男性用)"],
  ["grand-child", "ユニセックス"],
  ["grand-child", "ボディミスト"],
  ["grand-child", "その他"],
  ["child", "スキンケア/基礎化粧品"],
  ["grand-child", "化粧水/ローション"],
  ["grand-child", "乳液/ミルク"],
  ["grand-child", "美容液"],
  ["grand-child", "フェイスクリーム"],
  ["grand-child", "洗顔料"],
  ["grand-child", "クレンジング/メイク落とし"],
  ["grand-child", "パック/フェイスマスク"],
  ["grand-child", "ジェル/ゲル"],
  ["grand-child", "ブースター/導入液"],
  ["grand-child", "アイケア"],
  ["grand-child", "リップケア"],
  ["grand-child", "トライアルセット/サンプル"],
  ["grand-child", "洗顔グッズ"],
  ["grand-child", "その他"],
  ["child", "ヘアケア"],
  ["grand-child", "シャンプー"],
  ["grand-child", "トリートメント"],
  ["grand-child", "コンディショナー"],
  ["grand-child", "リンス"],
  ["grand-child", "スタイリング剤"],
  ["grand-child", "カラーリング剤"],
  ["grand-child", "ブラシ"],
  ["grand-child", "その他"],
  ["child", "ボディケア"],
  ["grand-child", "オイル/クリーム"],
  ["grand-child", "ハンドクリーム"],
  ["grand-child", "ローション"],
  ["grand-child", "日焼け止め/サンオイル"],
  ["grand-child", "ボディソープ"],
  ["grand-child", "入浴剤"],
  ["grand-child", "制汗/デオドラント"],
  ["grand-child", "フットケア"],
  ["grand-child", "その他"],
  ["child", "オーラルケア"],
  ["grand-child", "口臭防止/エチケット用品"],
  ["grand-child", "歯ブラシ"],
  ["grand-child", "その他"],
  ["child", "リラクゼーション"],
  ["grand-child", "エッセンシャルオイル"],
  ["grand-child", "芳香器"],
  ["grand-child", "お香/香炉"],
  ["grand-child", "キャンドル"],
  ["grand-child", "その他"],
  ["child", "ダイエット"],
  ["grand-child", "ダイエット食品"],
  ["grand-child", "エクササイズ用品"],
  ["grand-child", "体重計"],
  ["grand-child", "体脂肪計"],
  ["grand-child", "その他"],
  ["child", "その他"],
  ["grand-child", "健康用品"],
  ["grand-child", "看護/介護用品"],
  ["grand-child", "救急/衛生用品"],
  ["grand-child", "その他"],
  ["parent", "家電・スマホ・カメラ"],
  ["child", "スマートフォン/携帯電話"],
  ["grand-child", "スマートフォン本体"],
  ["grand-child", "バッテリー/充電器"],
  ["grand-child", "携帯電話本体"],
  ["grand-child", "PHS本体"],
  ["grand-child", "その他"],
  ["child", "スマホアクセサリー"],
  ["grand-child", "Android用ケース"],
  ["grand-child", "iPhone用ケース"],
  ["grand-child", "カバー"],
  ["grand-child", "イヤホンジャック"],
  ["grand-child", "ストラップ"],
  ["grand-child", "フィルム"],
  ["grand-child", "自撮り棒"],
  ["grand-child", "その他"],
  ["child", "PC/タブレット"],
  ["grand-child", "タブレット"],
  ["grand-child", "ノートPC"],
  ["grand-child", "デスクトップ型PC"],
  ["grand-child", "ディスプレイ"],
  ["grand-child", "電子ブックリーダー"],
  ["grand-child", "PC周辺機器"],
  ["grand-child", "PCパーツ"],
  ["grand-child", "その他"],
  ["child", "カメラ"],
  ["grand-child", "デジタルカメラ"],
  ["grand-child", "ビデオカメラ"],
  ["grand-child", "レンズ(単焦点)"],
  ["grand-child", "レンズ(ズーム)"],
  ["grand-child", "フィルムカメラ"],
  ["grand-child", "防犯カメラ"],
  ["grand-child", "その他"],
  ["child", "テレビ/映像機器"],
  ["grand-child", "テレビ"],
  ["grand-child", "プロジェクター"],
  ["grand-child", "ブルーレイレコーダー"],
  ["grand-child", "DVDレコーダー"],
  ["grand-child", "ブルーレイプレーヤー"],
  ["grand-child", "DVDプレーヤー"],
  ["grand-child", "映像用ケーブル"],
  ["grand-child", "その他"],
  ["child", "オーディオ機器"],
  ["grand-child", "ポータブルプレーヤー"],
  ["grand-child", "イヤフォン"],
  ["grand-child", "ヘッドフォン"],
  ["grand-child", "アンプ"],
  ["grand-child", "スピーカー"],
  ["grand-child", "ケーブル/シールド"],
  ["grand-child", "ラジオ"],
  ["grand-child", "その他"],
  ["child", "美容/健康"],
  ["grand-child", "ヘアドライヤー"],
  ["grand-child", "ヘアアイロン"],
  ["grand-child", "美容機器"],
  ["grand-child", "マッサージ機"],
  ["grand-child", "電気シェーバー"],
  ["grand-child", "電動歯ブラシ"],
  ["grand-child", "その他"],
  ["child", "冷暖房/空調"],
  ["grand-child", "エアコン"],
  ["grand-child", "空気清浄器"],
  ["grand-child", "加湿器"],
  ["grand-child", "扇風機"],
  ["grand-child", "除湿機"],
  ["grand-child", "ファンヒーター"],
  ["grand-child", "電気ヒーター"],
  ["grand-child", "オイルヒーター"],
  ["grand-child", "ストーブ"],
  ["grand-child", "ホットカーペット"],
  ["grand-child", "こたつ"],
  ["grand-child", "電気毛布"],
  ["grand-child", "その他"],
  ["child", "生活家電"],
  ["grand-child", "冷蔵庫"],
  ["grand-child", "洗濯機"],
  ["grand-child", "炊飯器"],
  ["grand-child", "電子レンジ/オーブン"],
  ["grand-child", "調理機器"],
  ["grand-child", "アイロン"],
  ["grand-child", "掃除機"],
  ["grand-child", "エスプレッソマシン"],
  ["grand-child", "コーヒーメーカー"],
  ["grand-child", "衣類乾燥機"],
  ["grand-child", "その他"],
  ["child", "その他"],
  ["grand-child", "その他"],
  ["parent", "スポーツ・レジャー"],
  ["child", "ゴルフ"],
  ["grand-child", "クラブ"],
  ["grand-child", "ウエア(男性用)"],
  ["grand-child", "ウエア(女性用)"],
  ["grand-child", "バッグ"],
  ["grand-child", "シューズ(男性用)"],
  ["grand-child", "シューズ(女性用)"],
  ["grand-child", "アクセサリー"],
  ["grand-child", "その他"],
  ["child", "フィッシング"],
  ["grand-child", "ロッド"],
  ["grand-child", "リール"],
  ["grand-child", "ルアー用品"],
  ["grand-child", "ウエア"],
  ["grand-child", "釣り糸/ライン"],
  ["grand-child", "その他"],
  ["child", "自転車"],
  ["grand-child", "自転車本体"],
  ["grand-child", "ウエア"],
  ["grand-child", "パーツ"],
  ["grand-child", "アクセサリー"],
  ["grand-child", "バッグ"],
  ["grand-child", "工具/メンテナンス"],
  ["grand-child", "その他"],
  ["child", "トレーニング/エクササイズ"],
  ["grand-child", "ランニング"],
  ["grand-child", "ウォーキング"],
  ["grand-child", "ヨガ"],
  ["grand-child", "トレーニング用品"],
  ["grand-child", "その他"],
  ["child", "野球"],
  ["grand-child", "ウェア"],
  ["grand-child", "シューズ"],
  ["grand-child", "グローブ"],
  ["grand-child", "バット"],
  ["grand-child", "アクセサリー"],
  ["grand-child", "防具"],
  ["grand-child", "練習機器"],
  ["grand-child", "記念グッズ"],
  ["grand-child", "応援グッズ"],
  ["grand-child", "その他"],
  ["child", "サッカー/フットサル"],
  ["grand-child", "ウェア"],
  ["grand-child", "シューズ"],
  ["grand-child", "ボール"],
  ["grand-child", "アクセサリー"],
  ["grand-child", "記念グッズ"],
  ["grand-child", "応援グッズ"],
  ["grand-child", "その他"],
  ["child", "テニス"],
  ["grand-child", "ラケット(硬式用)"],
  ["grand-child", "ラケット(軟式用)"],
  ["grand-child", "ウェア"],
  ["grand-child", "シューズ"],
  ["grand-child", "ボール"],
  ["grand-child", "アクセサリー"],
  ["grand-child", "記念グッズ"],
  ["grand-child", "応援グッズ"],
  ["grand-child", "その他"],
  ["child", "スノーボード"],
  ["grand-child", "ボード"],
  ["grand-child", "バインディング"],
  ["grand-child", "ブーツ(男性用)"],
  ["grand-child", "ブーツ(女性用)"],
  ["grand-child", "ブーツ(子ども用)"],
  ["grand-child", "ウエア/装備(男性用)"],
  ["grand-child", "ウエア/装備(女性用)"],
  ["grand-child", "ウエア/装備(子ども用)"],
  ["grand-child", "アクセサリー"],
  ["grand-child", "バッグ"],
  ["grand-child", "その他"],
  ["child", "スキー"],
  ["grand-child", "板"],
  ["grand-child", "ブーツ(男性用)"],
  ["grand-child", "ブーツ(女性用)"],
  ["grand-child", "ブーツ(子ども用)"],
  ["grand-child", "ビンディング"],
  ["grand-child", "ウエア(男性用)"],
  ["grand-child", "ウエア(女性用)"],
  ["grand-child", "ウエア(子ども用)"],
  ["grand-child", "ストック"],
  ["grand-child", "その他"],
  ["child", "その他スポーツ"],
  ["grand-child", "ダンス/バレエ"],
  ["grand-child", "サーフィン"],
  ["grand-child", "バスケットボール"],
  ["grand-child", "バドミントン"],
  ["grand-child", "バレーボール"],
  ["grand-child", "スケートボード"],
  ["grand-child", "陸上競技"],
  ["grand-child", "ラグビー"],
  ["grand-child", "アメリカンフットボール"],
  ["grand-child", "ボクシング"],
  ["grand-child", "ボウリング"],
  ["grand-child", "その他"],
  ["child", "アウトドア"],
  ["grand-child", "テント/タープ"],
  ["grand-child", "ライト/ランタン"],
  ["grand-child", "寝袋/寝具"],
  ["grand-child", "テーブル/チェア"],
  ["grand-child", "ストーブ/コンロ"],
  ["grand-child", "調理器具"],
  ["grand-child", "食器"],
  ["grand-child", "登山用品"],
  ["grand-child", "その他"],
  ["child", "その他"],
  ["grand-child", "旅行用品"],
  ["grand-child", "その他"],
  ["parent", "ハンドメイド"],
  ["child", "アクセサリー(女性用)"],
  ["grand-child", "ピアス"],
  ["grand-child", "イヤリング"],
  ["grand-child", "ネックレス"],
  ["grand-child", "ブレスレット"],
  ["grand-child", "リング"],
  ["grand-child", "チャーム"],
  ["grand-child", "ヘアゴム"],
  ["grand-child", "アンクレット"],
  ["grand-child", "その他"],
  ["child", "ファッション/小物"],
  ["grand-child", "バッグ(女性用)"],
  ["grand-child", "バッグ(男性用)"],
  ["grand-child", "財布(女性用)"],
  ["grand-child", "財布(男性用)"],
  ["grand-child", "ファッション雑貨"],
  ["grand-child", "その他"],
  ["child", "アクセサリー/時計"],
  ["grand-child", "アクセサリー(男性用)"],
  ["grand-child", "時計(女性用)"],
  ["grand-child", "時計(男性用)"],
  ["grand-child", "その他"],
  ["child", "日用品/インテリア"],
  ["grand-child", "キッチン用品"],
  ["grand-child", "家具"],
  ["grand-child", "文房具"],
  ["grand-child", "アート/写真"],
  ["grand-child", "アロマ/キャンドル"],
  ["grand-child", "フラワー/ガーデン"],
  ["grand-child", "その他"],
  ["child", "趣味/おもちゃ"],
  ["grand-child", "クラフト/布製品"],
  ["grand-child", "おもちゃ/人形"],
  ["grand-child", "その他"],
  ["child", "キッズ/ベビー"],
  ["grand-child", "ファッション雑貨"],
  ["grand-child", "スタイ/よだれかけ"],
  ["grand-child", "外出用品"],
  ["grand-child", "ネームタグ"],
  ["grand-child", "その他"],
  ["child", "素材/材料"],
  ["grand-child", "各種パーツ"],
  ["grand-child", "生地/糸"],
  ["grand-child", "型紙/パターン"],
  ["grand-child", "その他"],
  ["child", "二次創作物"],
  ["grand-child", "Ingress"],
  ["grand-child", "クリエイターズ宇宙兄弟"],
  ["child", "その他"],
  ["parent", "チケット"],
  ["child", "音楽"],
  ["grand-child", "男性アイドル"],
  ["grand-child", "女性アイドル"],
  ["grand-child", "韓流"],
  ["grand-child", "国内アーティスト"],
  ["grand-child", "海外アーティスト"],
  ["grand-child", "音楽フェス"],
  ["grand-child", "声優/アニメ"],
  ["grand-child", "その他"],
  ["child", "スポーツ"],
  ["grand-child", "サッカー"],
  ["grand-child", "野球"],
  ["grand-child", "テニス"],
  ["grand-child", "格闘技/プロレス"],
  ["grand-child", "相撲/武道"],
  ["grand-child", "ゴルフ"],
  ["grand-child", "バレーボール"],
  ["grand-child", "バスケットボール"],
  ["grand-child", "モータースポーツ"],
  ["grand-child", "ウィンタースポーツ"],
  ["grand-child", "その他"],
  ["child", "演劇/芸能"],
  ["grand-child", "ミュージカル"],
  ["grand-child", "演劇"],
  ["grand-child", "伝統芸能"],
  ["grand-child", "落語"],
  ["grand-child", "お笑い"],
  ["grand-child", "オペラ"],
  ["grand-child", "サーカス"],
  ["grand-child", "バレエ"],
  ["grand-child", "その他"],
  ["child", "イベント"],
  ["grand-child", "声優/アニメ"],
  ["grand-child", "キッズ/ファミリー"],
  ["grand-child", "トークショー/講演会"],
  ["grand-child", "その他"],
  ["child", "映画"],
  ["grand-child", "邦画"],
  ["grand-child", "洋画"],
  ["grand-child", "その他"],
  ["child", "施設利用券"],
  ["grand-child", "遊園地/テーマパーク"],
  ["grand-child", "美術館/博物館"],
  ["grand-child", "スキー場"],
  ["grand-child", "ゴルフ場"],
  ["grand-child", "フィットネスクラブ"],
  ["grand-child", "プール"],
  ["grand-child", "ボウリング場"],
  ["grand-child", "水族館"],
  ["grand-child", "動物園"],
  ["grand-child", "その他"],
  ["child", "優待券/割引券"],
  ["grand-child", "ショッピング"],
  ["grand-child", "レストラン/食事券"],
  ["grand-child", "フード/ドリンク券"],
  ["grand-child", "宿泊券"],
  ["grand-child", "その他"],
  ["child", "その他"],
  ["parent", "自動車・オートバイ"],
  ["child", "自動車本体"],
  ["grand-child", "国内自動車本体"],
  ["grand-child", "外国自動車本体"],
  ["child", "自動車タイヤ/ホイール"],
  ["grand-child", "タイヤ/ホイールセット"],
  ["grand-child", "タイヤ"],
  ["grand-child", "ホイール"],
  ["grand-child", "その他"],
  ["child", "自動車パーツ"],
  ["grand-child", "サスペンション"],
  ["grand-child", "ブレーキ"],
  ["grand-child", "外装、エアロパーツ"],
  ["grand-child", "ライト"],
  ["grand-child", "内装品、シート"],
  ["grand-child", "ステアリング"],
  ["grand-child", "マフラー・排気系"],
  ["grand-child", "エンジン、過給器、冷却装置"],
  ["grand-child", "クラッチ、ミッション、駆動系"],
  ["grand-child", "電装品"],
  ["grand-child", "補強パーツ"],
  ["grand-child", "汎用パーツ"],
  ["grand-child", "外国自動車用パーツ"],
  ["grand-child", "その他"],
  ["child", "自動車アクセサリー"],
  ["grand-child", "車内アクセサリー"],
  ["grand-child", "カーナビ"],
  ["grand-child", "カーオーディオ"],
  ["grand-child", "車外アクセサリー"],
  ["grand-child", "メンテナンス用品"],
  ["grand-child", "チャイルドシート"],
  ["grand-child", "ドライブレコーダー"],
  ["grand-child", "レーダー探知機"],
  ["grand-child", "カタログ/マニュアル"],
  ["grand-child", "セキュリティ"],
  ["grand-child", "ETC"],
  ["grand-child", "その他"],
  ["child", "オートバイ車体"],
  ["child", "オートバイパーツ"],
  ["grand-child", "タイヤ"],
  ["grand-child", "マフラー"],
  ["grand-child", "エンジン、冷却装置"],
  ["grand-child", "カウル、フェンダー、外装"],
  ["grand-child", "サスペンション"],
  ["grand-child", "ホイール"],
  ["grand-child", "シート"],
  ["grand-child", "ブレーキ"],
  ["grand-child", "タンク"],
  ["grand-child", "ライト、ウィンカー"],
  ["grand-child", "チェーン、スプロケット、駆動系"],
  ["grand-child", "メーター"],
  ["grand-child", "電装系"],
  ["grand-child", "ミラー"],
  ["child", "オートバイアクセサリー"],
  ["grand-child", "ヘルメット/シールド"],
  ["grand-child", "バイクウエア/装備"],
  ["grand-child", "アクセサリー"],
  ["grand-child", "メンテナンス"],
  ["grand-child", "カタログ/マニュアル"],
  ["grand-child", "その他"],
  ["parent", "その他"],
  ["child", "まとめ売り"],
  ["child", "ペット用品"],
  ["grand-child", "ペットフード"],
  ["grand-child", "犬用品"],
  ["grand-child", "猫用品"],
  ["grand-child", "魚用品/水草"],
  ["grand-child", "小動物用品"],
  ["grand-child", "爬虫類/両生類用品"],
  ["grand-child", "かご/おり"],
  ["grand-child", "鳥用品"],
  ["grand-child", "虫類用品"],
  ["grand-child", "その他"],
  ["child", "食品"],
  ["grand-child", "菓子"],
  ["grand-child", "米"],
  ["grand-child", "野菜"],
  ["grand-child", "果物"],
  ["grand-child", "調味料"],
  ["grand-child", "魚介類(加工食品)"],
  ["grand-child", "肉類(加工食品)"],
  ["grand-child", "その他 加工食品"],
  ["grand-child", "その他"],
  ["child", "飲料/酒"],
  ["grand-child", "コーヒー"],
  ["grand-child", "ソフトドリンク"],
  ["grand-child", "ミネラルウォーター"],
  ["grand-child", "茶"],
  ["grand-child", "ウイスキー"],
  ["grand-child", "ワイン"],
  ["grand-child", "ブランデー"],
  ["grand-child", "焼酎"],
  ["grand-child", "日本酒"],
  ["grand-child", "ビール、発泡酒"],
  ["grand-child", "その他"],
  ["child", "日用品/生活雑貨/旅行"],
  ["grand-child", "タオル/バス用品"],
  ["grand-child", "日用品/生活雑貨"],
  ["grand-child", "洗剤/柔軟剤"],
  ["grand-child", "旅行用品"],
  ["grand-child", "防災関連グッズ"],
  ["grand-child", "その他"],
  ["child", "アンティーク/コレクション"],
  ["grand-child", "雑貨"],
  ["grand-child", "工芸品"],
  ["grand-child", "家具"],
  ["grand-child", "印刷物"],
  ["grand-child", "その他"],
  ["child", "文房具/事務用品"],
  ["grand-child", "筆記具"],
  ["grand-child", "ノート/メモ帳"],
  ["grand-child", "テープ/マスキングテープ"],
  ["grand-child", "カレンダー/スケジュール"],
  ["grand-child", "アルバム/スクラップ"],
  ["grand-child", "ファイル/バインダー"],
  ["grand-child", "はさみ/カッター"],
  ["grand-child", "カードホルダー/名刺管理"],
  ["grand-child", "のり/ホッチキス"],
  ["grand-child", "その他"],
  ["child", "事務/店舗用品"],
  ["grand-child", "オフィス用品一般"],
  ["grand-child", "オフィス家具"],
  ["grand-child", "店舗用品"],
  ["grand-child", "OA機器"],
  ["grand-child", "ラッピング/包装"],
  ["grand-child", "その他"],
  ["child", "その他"]
]

parent = ""
child = ""
grand_child = ""

test_array.each do |ele|
  case ele[0]
  when "parent"
    parent = Category.create!({name: ele[1]})
  when "child"
    child = parent.children.create({name: ele[1]})
  when "grand-child"
    grand_child = child.children.create({name: ele[1]})
  end
end

