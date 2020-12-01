# Malbox

Malbox是一个Linux恶意软件模拟器，使用docker-compose即可一键模拟恶意软件运行环境。

## Usage

```bash
# 下载项目
git clone https://github.com/G4rb3n/Malbox.git
cd Malbox/

# 进入某一个恶意软件家族的目录
cd StartMiner/

# 自动化编译环境
docker-compose build

# 启动整个环境
docker-compose up -d

# 进入容器
docker exec -it [container_name] /bin/bash
```

分析完毕后，可一键清除容器

```
docker-compose down
```
