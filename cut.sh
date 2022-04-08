# -d ：自定义分隔符，默认为制表符 TAB
# -f ：与-d一起使用，指定显示哪个区域

echo "a b # xx # x" | cut -f1 -d"#"
# a b

echo "a b # xx # x" | cut -f2 -d"#"
# xx

echo "a b # xx # x" | cut -f3 -d"#"
echo 'a b # xx # x'| cut -f3 -d'#'
# x


