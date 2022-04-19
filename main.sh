#删除编译好的文件
rm -f build
#删除alist文件夹
rm -rf alist 
#删除alist-web文件夹
rm -rf alist-web
#下载alist-web仓库
git clone https://github.com/Xhofe/alist-web
#下载alist仓库
git clone https://github.com/Xhofe/alist
#如果要更改源码，请将以上内容全部注释#
#实例 #rm -rf alist

#复制run.sh至alist文件夹
cp run.sh alist/
#转到alist-web文件夹
cd alist-web 
#构建alist-web前端
npm install && npm run build
#转到上级目录
cd .. 
#复制前端dist文件至/alist/public
cp -r alist-web/dist/* alist/public/
#转到alist文件夹
cd alist
#运行后端构建
sh run.sh
#复制编译好的文件到上级目录并重命名为build
cp alist ../build
#转到上级目录
cd ..
#给build权限
chmod +x build 
#启动build
./build 
#整个流程默认就是这样
