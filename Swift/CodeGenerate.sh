#!/bin/bash

# 依存コマンドの存在チェック
for COMMAND in "jq" "openapi-generator"; do
    if !(type $COMMAND > /dev/null 2>&1); then
    echo "$COMMAND is not installed."
    exit 1
    fi
done

# 変数定義
CURRENT_DIR=$(cd $(dirname $0); pwd)
PARENT_DIR=$(cd $(dirname $CURRENT_DIR); pwd)
SPEC_FILE=$(find $PARENT_DIR -name *.yaml)
PROJECTNAME=$(cat $CURRENT_DIR/config.json | jq '.projectName' | sed 's/^.*"\(.*\)".*$/\1/')

# コード生成準備
rm -rf $CURRENT_DIR/build

# コード生成
openapi-generator generate \
    -g swift4 \
    -t $CURRENT_DIR/customtemplate \
    -c $CURRENT_DIR/config.json \
    -i $SPEC_FILE \
    -o $CURRENT_DIR/build/

# podspecコピー
cp -f $CURRENT_DIR/build/$PROJECTNAME.podspec $PARENT_DIR/
