# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

item1 = Item.create!(
  name: 'KATOMOKU muku mini square clock',
  description:
    '「いろんな机に小さなかたまり」\n' +
    '\n' +
    '仕事の机の上からお子さんの勉強机まで多くの場面で使っていただきたく、\n' +
    '今回はカラーバリエーション豊富なシリーズになりました。\n' +
    '\n' +
    '文字盤は印刷でもなく、レーザー加工でもなく、焼印で焼き付けました。\n' +
    'レーザー加工では表現できないアナログな焦げ目、\n' +
    'そしてプレス時にできてしまう凹みが、\n' +
    '味わい深く、小さくても魅力たっぷりな時計です。\n' +
    '\n' +
    'サイズ：85×85×46mm\n' +
    'カラー：赤\n' +
    '材　質：ビーチ\n' +
    '重　量：130g\n' +
    '仕　様：ステップムーブメント（連続秒針）\n' +
    '付属品：取扱説明書、保証書、単3電池\n',
  unit_price: 3780)
item1.image.attach(io: File.open(Rails.root.join('tmp', 'images', 'clock.jpg')), filename: 'clock.jpg')

item2 = Item.create!(
  name: 'Dolls RING',
  description:
    '彫金師が製作したモチーフが取り外しできるぜんまいの指輪です。\n' +
    'リング部分は長いネジを丸めて内側を削っております。\n' +
    '\n' +
    '\n' +
    '・サイズ： 8〜20号（必ず備考欄へご指定下さい）\n' +
    '・素材：真鍮\n' +
    '\n' +
    '※手作業の為、サイズによりリングの印象が変わる場合がございますがご了承ください。\n' +
    '※ネジは着脱可能のため紛失にご注意ください。\n' +
    '※フリーサイズではございませんので備考欄へサイズの指定の記載をお願いいたします。\n' +
    '※上記以外のサイズをご注文の際は応相談とさせていただきます。\n' +
    '※オーダーメイドとなっておりますので発送に２週間以上かかる場合がございます。お急ぎの場合は一度お問い合わせください。\n' +
    '※色変わりの風合いを楽しんでいただくためメッキなどをしていません。 \n' +
    '※その他、ご質問はお気軽にご連絡ください。\n',
  unit_price: 5940)
item2.image.attach(io: File.open(Rails.root.join('tmp', 'images', 'ring.jpg')), filename: 'ring.jpg')

item3 = Item.create!(
  name: 'no/26 Earrings',
  description:
    'すこしツヤのある乳白の丸い陶器イヤリング\n' +
    '表面はデコボコテクスチャー\n' +
    '\n' +
    '少し大きめで存在感がありながら\n' +
    '爽やかに、オシャレにつけていただけます。\n' +
    '\n' +
    '陶器ですが、片耳7gと 重くはないです。\n' +
    '\n' +
    '【 パーツ交換 】\n' +
    '非対応\n' +
    '\n' +
    '【 素材 】\n' +
    'パーツ：陶器\n' +
    '裏側：全面レジンコーティング\n' +
    'イヤリング：真鍮\n' +
    '\n' +
    '【 ラッピングBOXについて 】\n' +
    '中に入っているトレーシングペーパーのメッセージが選べます。\n' +
    '購入時にご選択ください。\n' +
    '＊ラッピングBOXをご希望の方は定形外郵便（送料¥220）での発送になります。\n' +
    '\n' +
    '＊ラッピングBOXなしでも無料で簡易ギフトラッピング致します。\n',
  unit_price: 4200)
item3.image.attach(io: File.open(Rails.root.join('tmp', 'images', 'earring.jpg')), filename: 'earring.jpg')

item4 = Item.create!(
  name: 'iPhone cover',
  description:
    '【うつわのデザインをiPhoneに】\n' +
    '\n' +
    'いつもはうつわのデザインをしていますが\n' +
    'より身近に私たちのデザインを感じて欲しく、\n' +
    'Phoneケースとして\n' +
    '制作しました！\n' +
    '\n' +
    '第一弾のオリジナルのholyパターンに続き\n' +
    'ピンクとブルーグレーをミックスした\n' +
    '落ち着きパステルカラーも登場です。\n' +
    '\n' +
    'たくさんの福をもたらして欲しいという思いをこめて\n' +
    '作っています。\n' +
    'oly, holy, happy life！\n' +
    '\n' +
    '【spec】 \n' +
    'サイズ：iPhone 8 plus対応サイズ\n' +
    '素材：ポリカーボネート\n' +
    '濃度の差やデザインの出具合が若干ことなる場合がございます。\n' +
    'C環境により、実際のカラーと異なって見える場合がございます。\n' +
    'あらかじめご了承ください。\n',
  unit_price: 2900)
item4.image.attach(io: File.open(Rails.root.join('tmp', 'images', 'iphonecover.jpg')), filename: 'iphonecover.jpg')

item5 = Item.create!(
  name: 'Cookie Box',
  description:
    'fa-muのおすすめクッキー11種類の詰め合わせボックスです。\n' +
    '\n' +
    '※さくさくクッキー(3枚目の写真)はプレーン、抹茶、チョコチップ、アールグレイ、コーヒー、アーモンドココア、マーブルの7種類の中からお好きな4種類をお選び下さい！\n' +
    'ご購入の際に備考欄に希望のクッキーをお書きください。\n' +
    '記入がなければこちらにおまかせとなります！\n' +
    '\n' +
    '大きいオリジナルのラッピングペーパー作りました。\n' +
    'プレゼントの方はオプションより包装紙をご指定下さいませ。通常はオリジナルの箱のままのお届けです。\n' +
    '熨斗紙もオプションにて承ります。お名前などは備考欄かメッセージでお伺いいたします。\n' +
    '\n' +
    '※宅急便コンパクトにはお一つしか入りませんのでご注意下さい！（宅急便コンパクトの箱にピッタリのギフトボックスです。1点の場合、送料の安い宅急便コンパクトでの配送をお勧めします。）\n' +
    '\n' +
    '受注販売になります。\n' +
    'ご購入確認後準備でき次第発送いたします。\n',  
  unit_price: 2500)
item5.image.attach(io: File.open(Rails.root.join('tmp', 'images', 'cookie.jpg')), filename: 'cookie.jpg')






