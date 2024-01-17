

# echo "Replace blanks"
# find -type f -name "*.docx" -print | while read item; do
#   echo "File: $item"
#   mv "$item" "${item// /_}"
# done

# echo "improve filenames"
# find -type f -name "*.docx" -print | while read item; do
#   echo "File: $item"
#   mv "$item" "${item/_-_/_}"
# done


find -type f -name "*.docx" -print | while read item; do
  echo "Convert to markdown"
  filename=$(basename -- "$item")
  targetname="${filename%.*}"
  pandoc -t markdown_strict --extract-media="./$targetname/" "$item" -o "$targetname.md";
  echo "Remove $item"
  rm "$item"
done

