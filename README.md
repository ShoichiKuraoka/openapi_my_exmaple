# openapi_my_exmaple

## 0. 必要なローカル環境
 - `brew install jq`
 - `brew install openapi-generator`

## 1. API編集
1. yaml形式のAPI定義ファイルを編集する。
2. Swiftコードとpodspecを生成する。（Swift/CodeGenerate.shを実行）

## 2. podspec編集
1. Swift/config.jsonを編集。
  - podspecは自動生成の対象なので直接変更しないこと。
  - 編集できる項目は、`openapi-generator config-help -g swift4`で確認可能。
2. Swiftコードとpodspecを生成する。（Swift/CodeGenerate.shを実行）

## 3. pod取り込み
podfileに下記を追加。

`pod '(ProjectName)', :git => '(gitURL)'`

---

※必要な最小構成は、ブランチ`first`を参照のこと。
