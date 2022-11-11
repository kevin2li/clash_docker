# Clash使用教程
1. 克隆仓库到本地
```bash
git clone git@github.com:kevin2li/clash_docker.git
```
2. 进入仓库目录: `cd clash_docker`
3. 替换`clash_config.yaml`为自己的代理配置文件
4. 启动容器
```bash
docker build . -t kevin2li/clash
docker compose up -d
```
5. 选择代理  
- 方法一：使用webUI   
访问 http://clash.razord.top/#/proxies 进行连接设置
- 方法二：使用clashcli(推荐)  
详见：https://github.com/shunf4/clashcli  
```bash
# 测试延迟
docker exec -it clash ./clashcli -t
# 选择节点
docker exec -it clash ./clashcli
```
6. 宿主机终端科学上网
```bash
export https_proxy="http://127.0.0.1:7890" && export http_proxy="http://127.0.0.1:7890"
```
7. 测试
```bash
curl https://www.google.com
```
