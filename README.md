claude_rbs_goose_examples
=========================

このリポジトリは https://github.com/kokuyouwind/claude_rbs_goose の利用例をまとめたものです。

## Directories

 * [1_lifegame](https://github.com/kokuyouwind/claude_rbs_goose_examples/tree/main/1_lifegame): コンウェイのライフゲームをコンソール上で実装したもの

ディレクトリには以下のサブディレクトリを配置しています。
また `2_file` と `3_inline` 以下の `log.txt` には [claude_rbs_goose](https://github.com/kokuyouwind/claude_rbs_goose) の実行ログを配置しています。

 * 1_untyped: [claude_rbs_goose](https://github.com/kokuyouwind/claude_rbs_goose) を適用する前の、型注釈のないコードベース
 * 2_file: `mode: :file` で `sig` ディレクトリ以下に型シグネチャを生成したコードベース
 * 3_inline: `mode: :inline` で Ruby ソースコードに型注釈を追加したコードベース
