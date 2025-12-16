git checkout main

git subtree split --prefix=hd --annotate="(split) " --branch hd_new_history
git checkout hd
git merge hd_new_history -m "Merge latest hd content from main"
git checkout main -- README.md LICENSE
git commit --amend --no-edit

git subtree split --prefix=webp --annotate="(split) " --branch webp_new_history
git checkout webp
git merge webp_new_history -m "Merge latest webp content from main"
git checkout main -- README.md LICENSE
git commit --amend --no-edit

git checkout main
git branch -D hd_new_history webp_new_history
git push --force origin hd webp