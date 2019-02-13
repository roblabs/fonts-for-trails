for fullfile in *.ttf

do

  # Extract filename and extension in Bash - https://stackoverflow.com/a/965072
  filename=$(basename -- "$fullfile")
  extension="${filename##*.}"
    echo "operating on $extension"
  fileroot="${filename%.*}"

  echo $fileroot
  mkdir -p tmp/$fileroot/fontreport
  mkdir -p tmp/$fileroot/ttf2svg
  mkdir -p tmp/$fileroot/svg-caster

  # Generate FontReport
  cd tmp/$fileroot/fontreport
  fontreport "../../../$filename" "$fileroot.pdf";
  cd ../../..

  # Convert TTF to SVG-Font
  ttf2svg $filename tmp/$fileroot/ttf2svg/$fileroot.svg

  # Convert SVG-Font to .svg
  svg-caster --svg-font tmp/$fileroot/ttf2svg/$fileroot.svg \
     --out-svg tmp/$fileroot/svg-caster

done
