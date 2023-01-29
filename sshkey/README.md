## 开启远程ssh秘钥登入 
#### 生成秘钥
```
ssh-keygen -b 2048
```
```
cd /root/.ssh/ && cp id_rsa.pub authorized_keys && chmod 600 authorized_keys && chmod 700 ~/.ssh
```
替换 /etc/ssh/sshd_config文件
#### 重启服务
```
service ssh restart
```
