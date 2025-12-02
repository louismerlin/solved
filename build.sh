#!/bin/sh
mkdir -p docs

find src -name '*.md' | sort | while read -r md_file; do
  [ -f "$md_file" ] || continue

  rel_path="${md_file#src/}"
  html_file="docs/${rel_path%.md}.html"

  mkdir -p "$(dirname "$html_file")"
  cat header.html > "$html_file"
  cmark --unsafe "$md_file" >> "$html_file"
  cat footer.html >> "$html_file"
done
