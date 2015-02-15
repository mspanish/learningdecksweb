#!/usr/bin/env bash
set -e # halt script on error


git add --all
git commit -m 'blog upd'
git push origin gh-pages