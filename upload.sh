#!/bin/bash
#
# 参数格式: upload [扩展名] [操作]
# 扩展名:
# png/jpg/jped/zip/mp4等等，可以传 -a/--all 代表所有格式
# 操作:
# -o/--open: 在浏览器中打开链接
#
# 常用命令示例:
# upload           上传所有可上传的文件
# upload -a        上传所有可上传的文件
# upload -a -o     上传所有可上传的文件，并在浏览器中打开链接
# upload png       上传所有png的文件

# 文件个数
COUNT=0
# 参数表
PARAM1=$1
PARAM2=$2

function upload(){
	echo "> 正在上传: ${FILENAME}"
	url=`curl -s -F "name=@${FILENAME}" https://img.vim-cn.com/ 2>&1`
	case $PARAM2 in
		'-o'|'--open')
		  printf "\033[32m${FILENAME}\033[0m 已上传至: \033[32m${url}\033[0m\n" && open $url
		;;
		*)
		  printf "\033[32m${FILENAME}\033[0m 已上传至: \033[32m${url}\033[0m\n"
		;;
  esac
}

function check(){
	for FILENAME in *
	do
		if [ -d "$FILENAME" ]; then
			echo "> cd \"${FILENAME}\""
			cd "${FILENAME}"
			check ${FILENAME}
		elif [ -r "$FILENAME" ]; then
			case $PARAM1 in
				''|'-a'|'--all')
				  # 不传参数/传-a/--all都代表上传所有文件
					let COUNT++
					upload &
				;;
				*)
				  # 否则就上传指定的文件
					file=$1
					if [ "${file##*.}"x = "${PARAM1}"x ];then
						let COUNT++
						upload &
					fi
				;;
			esac
	  fi
	done
}

function start(){
	echo "> 开始上传..."
	check
	wait
	echo "> 全部${COUNT}个文件上传完毕！"
}

start
