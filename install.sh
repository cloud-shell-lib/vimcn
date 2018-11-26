#!/bin/bash
#
# 参数格式: upload [扩展名] [操作]
# 扩展名:
# png/jpg/jped/zip/mp4等等，可以传 -a 代表所有格式
# 操作:
# -o/--open: 在浏览器中打开链接
#
# 常用命令示例:
# upload -a        上传所有可上传的文件
# upload -a -o     上传所有可上传的文件，并在浏览器中打开链接
# upload png       上传所有png的文件


function on_wait(){
	if [ "$1" != "" ];then
		sleep $1
	else
		printf "\n按下任意键继续: "
		read -n 1
	fi
}
function on_success(){
	if [ "$1" != "" ];then
		printf "> \033[32m%s！\033[0m\n" $1
	else
		printf "> \033[32m操作成功！\033[0m\n"
	fi

}
function on_fail(){
	if [ "$1" != "" ];then
		printf "\n> \033[31m%s！\033[0m\n" $1
	else
		printf "\n> \033[31m操作失败！\033[0m\n"
	fi
	printf "我们都有不顺利的时候。\n"
	on_wait

}


function download() {
	curl -o $HOME/Downloads/upload.sh 'https://raw.githubusercontent.com/xaoxuu/hexo.sh/v2/upload.sh' &&
	chmod 777 $HOME/Downloads/upload.sh &&
	printf "\n> 请输入密码来安装脚本\n" &&
	sudo mv $HOME/Downloads/upload.sh '/usr/local/bin/upload' || on_fail
}
