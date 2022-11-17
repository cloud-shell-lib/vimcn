# vim-cn.sh
一个上传图片到 [img.vim-cn.com](https://img.vim-cn.com) 的脚本。

![](https://img.vim-cn.com/0d/e463788b9eb82f82b551d8da1cd4cbae9d64cb.png)


## 直接使用

打开终端，`cd` 到存放图片的文件夹，输入这行命令就开始上传图片：

```bash
curl -s https://sh.xaox.cc/run/vimcn/main/upload.sh | sh
```

> 为了简化指令，建议下载安装后使用。

## 下载安装

```bash
curl -s https://sh.xaox.cc/install | bash -s vimcn
```

<br>


## 使用

需要上传图片到时候，打开终端，`cd` 到存放图片的文件夹，输入 `upload` 就可以了。当然，还可以传递参数：

```bash
upload [扩展名] [操作]
```


| 扩展名                             | 含义               |
| ---------------------------------- | ------------------ |
| `all` 或者不传任何参数  | 上传所有格式的文件   |
| `png`、`jpg`、`ico`等具体的某个扩展名 | 上传指定格式的文件 |

| 操作            | 含义               |
| --------------- | ------------------ |
| `open` | 上传成功后打开链接 |

<br>
