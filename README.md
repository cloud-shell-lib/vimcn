# vim-cn.sh
一个上传图片到 [img.vim-cn.com](img.vim-cn.com) 的脚本。

![](https://img.vim-cn.com/0d/e463788b9eb82f82b551d8da1cd4cbae9d64cb.png)



## 下载

```bash
curl -s https://raw.githubusercontent.com/xaoxuu/vim-cn.sh/v2/install | sh
```



## 使用

```bash
upload [扩展名] [操作]
```


| 扩展名                             | 含义               |
| ---------------------------------- | ------------------ |
| `-a`、`--all`或者`不传任何参数`  | 上传所有格式的文件   |
| `png`、`jpg`、`ico`等具体的某个`扩展名` | 上传指定格式的文件 |

| 操作            | 含义               |
| --------------- | ------------------ |
| `-o`、`--open` | 上传成功后打开链接 |

##### 也可以直接使用

打开终端，`cd` 到存放图片的文件夹，输入这行命令就开始上传图片：

```bash
curl -s https://raw.githubusercontent.com/xaoxuu/vim-cn.sh/v2/upload | sh
```



## 文档

[![](https://img.shields.io/badge/文档-https://xaoxuu.com/wiki/vim--cn.sh/-green.svg?logo=github&logoColor=ddd&colorA=888&colorB=52A1F8&longCache=true&style=popout-square)](https://xaoxuu.com/wiki/vim-cn.sh/)



## 源码

[![](https://img.shields.io/badge/源码-https://github.com/xaoxuu/vim--cn/-green.svg?logo=github&logoColor=ddd&colorA=888&colorB=52A1F8&longCache=true&style=popout-square)](https://github.com/xaoxuu/vim-cn.sh/)


## img.vim-cn.com

<iframe frameborder="no" border="0" marginwidth="0" marginheight="0" width=100% height=480 src="https://img.vim-cn.com"></iframe>
