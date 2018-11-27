# vim-cn.sh
一个上传图片到 [img.vim-cn.com](img.vim-cn.com) 的脚本。

![](https://img.vim-cn.com/0d/e463788b9eb82f82b551d8da1cd4cbae9d64cb.png)



## 下载

```bash
curl -s https://xaoxuu.com/install | sh -s vim-cn.sh
```
> 这个命令的功能是把`client`脚本下载到本地命名为`upload`并保存到`usr/local/bin`目录。

<br>


## 使用

需要上传图片到时候，打开终端，`cd`到存放图片的文件夹，输入`upload`就可以了。当然，还可以传递参数：

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

<br>

## 也可以不下载直接使用

打开终端，`cd` 到存放图片的文件夹，输入这行命令就开始上传图片：

```bash
curl -s https://raw.githubusercontent.com/xaoxuu/vim-cn.sh/v2/upload | sh
```

<br>

## 文档

具体使用方法见文档：

[![](https://img.shields.io/badge/文档-https://xaoxuu.com/wiki/vim--cn.sh/-green.svg?logo=github&logoColor=ddd&colorA=888&colorB=52A1F8&longCache=true&style=popout-square)](https://xaoxuu.com/wiki/vim-cn.sh/)

<br>

## 源码

[![](https://img.shields.io/badge/源码-https://github.com/xaoxuu/vim--cn/-green.svg?logo=github&logoColor=ddd&colorA=888&colorB=52A1F8&longCache=true&style=popout-square)](https://github.com/xaoxuu/vim-cn.sh/)
