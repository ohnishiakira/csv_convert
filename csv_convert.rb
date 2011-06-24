require 'csv'

rows = CSV.open(ARGV[0], 'r')
now_item = "" #現在のUSERをここに入れる
rows.shift	#１行目は列名なので飛ばす

rows.each{ |row|
	if now_item == "" then
		now_item = row[0]
		print row[0] #USER名を表示する
	elsif now_item != row[0] then #もしUSERが次のに変わったら、新しいUSERをnow_itemに入れる
		now_item = row[0]
		print "\n" 
		print row[0] #USER名を表示する
	end
	print ",",row[1] #ITEM名を表示する。
	}
print "\n"