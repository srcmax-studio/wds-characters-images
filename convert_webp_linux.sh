mkdir -p webp
# 解释：
# -print0 : 输出文件名以 null 结尾（无视换行符问题）
# -0      : 告诉 parallel 以 null 为分隔符读取
find hd -name "*.png" -print0 | parallel -0 'cwebp -q 60 {} -o webp/{/.}.webp'
