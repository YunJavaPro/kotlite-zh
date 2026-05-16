#!/bin/bash

set -e

# 构建脚本
# 使用 Asciidoctor 将 AsciiDoc 文件转换为 HTML

OUTPUT_DIR="output"
DOCS_DIR="docs"

# 清理并创建输出目录
rm -rf "$OUTPUT_DIR"
mkdir -p "$OUTPUT_DIR"

# 使用 Asciidoctor 构建
if command -v asciidoctor &> /dev/null; then
    echo "正在使用本地 Asciidoctor 构建..."
    asciidoctor \
        -r asciidoctor-diagram \
        -D "$OUTPUT_DIR" \
        "$DOCS_DIR/index.adoc"
elif command -v docker &> /dev/null; then
    echo "正在使用 Docker Asciidoctor 构建..."
    docker run --rm \
        -v "$(pwd):/wd" \
        uwebarthel/asciidoctor \
        asciidoctor \
            -r asciidoctor-diagram \
            -D "/wd/$OUTPUT_DIR" \
            "/wd/$DOCS_DIR/index.adoc"
else
    echo "错误: 未找到 Asciidoctor 或 Docker"
    echo "请安装 Asciidoctor (https://docs.asciidoctor.org/asciidoctor/latest/install/)"
    echo "或者安装 Docker (https://www.docker.com/)"
    exit 1
fi

# 复制媒体文件
cp -R "$DOCS_DIR/media" "$OUTPUT_DIR/"

echo "构建完成！输出目录: $OUTPUT_DIR"
echo "你可以打开 $OUTPUT_DIR/index.html 查看文档"
