# SamplePhoneBook

## 画面レイアウト図
[画面レイアウト図-仕様書-](https://docs.google.com/spreadsheets/d/14hyHM1gKz_DWQNYbU67hBtUrYgBsNHjzFpy-L-02988/edit#gid=0)  
[画面レイアウト図-XD-](https://xd.adobe.com/view/d4032aea-40f7-438d-b780-3a0b0c12a76f-8150/)

## コーディング規約
- 作業ブランチを作る前にローカルのmainを最新にしておくこと
- 作業ブランチはmainブランチから作ること
- Git/Githubの作業は下記の流れで行うと良い 
　※作業ブランチを作る前に下記作業をすること
```
$git branch
* main
$git fetch
$git pull
```

Git/Github作業手順
①作業ブランチ作成
作業ブランチはわかりやすいように issue + issue番号のフォーマットにすること
```
$git checkout -b issue#1
```

issueの作業をした後...

②コミット、プッシュする時
```
$git status
$git add .
$git commit -m "fix #1 コミットメッセージ"
$git push -u origin issue#1
```

③Githubでプッシュしたソースを確認したらプルリクを出す

## 注意点
コードレビューの指摘修正をコミットする時、コミットメッセージの先頭に
```
fix issue番号
```
上記はコミットメッセージにつける必要ない。  
必要なのはあくまで作業ブランチの初回コミット時だけです。
