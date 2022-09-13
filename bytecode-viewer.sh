#!/bin/bash

# 校验参数合法性
source util.sh
check $1

# 得到新的目录
newfoldername=${foldername}"-bytecodeviewer"
rm -rf $foldername

if [ ! -d "$newfoldername" ];
	then
	mkdir $newfoldername
fi

# 切换到创建的目录
cd $newfoldername

# 打印该目录的路径
echo `pwd`

# 通过ClassyShark查看apk文件
echo "View the decompile file"

# 执行ClassyShark命令
#java -jar ../../tools/bytecode-viewer/Bytecode-Viewer.jar -i $absolutename -o . -t all
java -jar ../../tools/bytecode-viewer/Bytecode-Viewer.jar