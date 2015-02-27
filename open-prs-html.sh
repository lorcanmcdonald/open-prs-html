#!/bin/bash
open-prs  | jq -r '"# ![\(.user.login)](\(.user.avatar_url))[\(.title)](\(.html_url))\n\(.body)\n"' | pandoc --from markdown_github --to html --standalone -H style.css > prs.html
open prs.html
