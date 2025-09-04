#!/bin/sh
mkdir -p docs
for md_file in src/*.md; do
  if [ -f "$md_file" ]; then
    basename=$(basename "$md_file" .md)
    html_file="docs/${basename}.html"
    cat header.html > "$html_file"
    cmark --unsafe "$md_file" >> "$html_file"
    cat footer.html >> "$html_file"
  fi
done
