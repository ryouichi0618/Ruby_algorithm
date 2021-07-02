# タクシーの初乗り100円、区間毎に10円加算、N区間の料金はいくらか
input_line = gets.to_i

def distance(n)
    distance = 10 * n
    total = 100
    total += distance
end

puts distance(input_line)

hile(goal_distanc >= run)
        run += datas[0].to_i
        price += datas[3].to_i
     
    end
    if min_price > price
        min_price = price
    end
    if max_price < price
        max_price = price
    end

    i += 1
end
print min_price.to_s + " "
print max_price.to_s


# タクシーの運賃は初乗り距離と初乗り運賃、加算距離、加算運賃で決まります。
# タクシーの乗車距離が初乗り距離未満の場合は、初乗り運賃だけで移動することができます。
# 初乗り距離と同じ距離だけ乗車した段階で、運賃に加算運賃が追加され、以後加算距離を移動する毎に加算運賃が追加されていきます。

# あなたは今いる場所から X メートル離れた場所へ、 1 台のタクシーで移動しようとしています。
# 利用可能なタクシー N 台の料金のパラメータが与えられるので、タクシーで X メートル移動した際の最安値と最高値を計算してください。

# 例えば、 入力例 1 の場合は以下のように 600円 が最安値となり、 800円 が最高値となります。
# 1 番目のタクシーは初乗り距離以上なので加算距離 1 つ分が追加され 600円 かかります。
# 2 番目のタクシーは初乗り距離までで到着するので、初乗り運賃のみで 800円 かかります。

=begin
input_data1 = gets
array = input_data1.split

# タクシーの台数
count = array[0].to_i
# 目標距離
goal_distanc = array[1].to_i #700

i = 0
# タクシーの台数分入力を受け取る
max_price =0
min_price = 10000000
while i < count do
    input_data2 = gets
    datas = input_data2.split
    
    # 移動距離を代入
    run = datas[0].to_i #600
    # 料金を代入
    price = datas[1].to_i #200
    # 目標距離より初乗り距離が短ければ加算運賃と加算距離を足す
  
    while(goal_distanc >= run)
        run += datas[2].to_i
        price += datas[3].to_i
    end
    if min_price > price
        min_price = price
    end
    if max_price < price
        max_price = price
    end

    i += 1
end
pruts min_price.to_s + " " + max_price.to_s

=end

# getsで値を取得、chompで後方の空白を取り除く、splitで空白区切りで配列に変換,mapを使い全て要素をint形に変換
ipt = gets.chomp.split.map!(&:to_i)
# 各要素を変数に代入
N = ipt[0]
X = ipt[1]
# 空の配列を作成
fees = []

# タクシーの台数分処理（値の入力受付）を繰り返す。
N.times do |i|
    params = gets.chomp.split.map!(&:to_i)
    # 初乗り距離
    x_0 = params[0]
    # 初乗り運賃
    start = params[1]
    # 加算距離
    x_i = params[2]
    # 加算運賃
    add = params[3]
    
    cnt = 0
    # 目標距離を代入
    rest_x = X
    # 運賃を代入
    fee = start
    # 目標距離から初乗り距離を引く
    rest_x -= x_0
    
    # 0未満ならば初乗り運賃内で辿り着いたことになるので空の配列に値を追加する。
    if rest_x < 0
        fees << start
        # 以下の処理を行わず次の繰り返し処理に移る
        next
    end
    # rest_xは残りの距離なので加算距離何個分か計算するために、加算距離で割る。
    cnt = (rest_x / x_i) + 1
    # 配列に合計金額を入れる
    fees << (start + add * cnt)
end
# 配列の中で一番値が大きいものを代入
max = fees.max
# 配列の中で一番値が小さいものを代入
min = fees.min 

puts min.to_s + ' ' + max.to_s