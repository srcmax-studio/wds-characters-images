mkdir -p webp
for img in hd/*.png; do
    filename=$(basename "$img" .png)
    cwebp -q 60 "$img" -o "webp/${filename}.webp"
done

