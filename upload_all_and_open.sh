#!/bin/bash

COUNT=0

function upload(){
	echo "> 正在上传: ${FILENAME}"
	url=`curl -s -F "name=@${FILENAME}" https://img.vim-cn.com/ 2>&1`
	printf "\033[32m${FILENAME}\033[0m 已上传至: \033[32m${url}\033[0m\n" && open $url
}

function check(){
	for FILENAME in *
	do
		if [ -d "$FILENAME" ]; then
			echo "> cd \"${FILENAME}\""
			cd "${FILENAME}"
			check ${FILENAME}
		elif [ -r "$FILENAME" ]; then
			let COUNT++
			upload &
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
