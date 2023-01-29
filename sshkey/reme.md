## 开启远程ssh秘钥登入 ssh-keygen
cd /root/.ssh/

cp id_rsa.pub authorized_keys

chmod 600 authorized_keys

chmod 700 ~/.ssh

替换 /etc/ssh/sshd_config文件
