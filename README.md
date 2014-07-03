# chef 自动化部署
======

## 部署环境以及部署组件

环境: CentOS 6.6
组件:

* nginx
* mysql
* redis
* memcached
* mongodb
* rbenv

## 概念

自动化搭建服务器环境

## Usage

1. 获取项目库并安装对应的gem包
<pre> 
git clone https://github.com/huhongda/deploy 

cd deploy

bundle install
</pre>

2. 进入部署目录开始部署服务器

<pre>
cd chef
# 安装环境组件
bundle exec berks install 

# 将本地公钥同步复制到服务器中
ssh-copy-id root@yourserverip

# 在远程服务器端部署chef
bundle exec knife solo prepare root@yourserverip
</pre>

3. 修改节点配置文件，加入需要安装的角色

4. 部署服务器环境 
<pre>
bundle exec knife solo cook root@yourserverip
</pre>
