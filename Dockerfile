# 使用官方Python基础镜像
FROM python:3.8-slim

# 设置工作目录
WORKDIR /app

# 复制当前目录中的内容到容器中的/app
COPY . /app

# 安装依赖
RUN pip install --no-cache-dir -r requirements.txt

# 设置环境变量
ENV FLASK_APP=upload.py
ENV FLASK_RUN_HOST=0.0.0.0

# 对外暴露端口
EXPOSE 5000

# 运行应用
CMD ["flask", "run"]
