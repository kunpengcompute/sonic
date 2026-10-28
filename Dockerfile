FROM swr.cn-north-4.myhuaweicloud.com/cloud_boostkit/openeuler22.03_lts_sp3:latest

# ---- 镜像获取方式 (二选一) ----
# 方式一 自行构建: 在本文件所在目录执行
#   docker build -t <镜像名>:<标签> .
# 方式二 直接拉取: 使用已按本 Dockerfile 构建并推送好的镜像, 无需再构建
#   docker pull swr.cn-north-4.myhuaweicloud.com/cloud_boostkit/openeuler22.03_lts_sp3:sonic_26.3.0.01

# ---- 0. 系统依赖 ----
RUN dnf update -y && dnf install -y \
        gcc gcc-c++ make \
        git curl wget \
        ca-certificates \
        clang \
    && dnf clean all \
    && gcc --version \
    && git --version

# ---- 1. 安装 Go 1.23.4 (aliyun 镜像) ----
ENV GOROOT=/opt/go
ENV GOPATH=/root/go
ENV PATH="/opt/go/bin:${GOPATH}/bin:${PATH}"
RUN wget -q https://mirrors.aliyun.com/golang/go1.23.4.linux-arm64.tar.gz -O /tmp/go.tar.gz \
    && rm -rf /opt/go \
    && tar -C /opt -xzf /tmp/go.tar.gz \
    && rm /tmp/go.tar.gz \
    && go version \
    && go env GOROOT GOPATH

# ---- 2. 设置 GOPROXY (中国镜像, 持久化) ----
ENV GOPROXY=https://mirrors.aliyun.com/goproxy/,direct
ENV GOSUMDB=off
RUN go env -w GOPROXY=https://mirrors.aliyun.com/goproxy/,direct GOSUMDB=off \
    && go env GOPROXY GOSUMDB

# ---- 3. 工作目录 ----
WORKDIR /workspace

# ---- 默认 CMD: 交互式 shell ----
CMD ["/bin/bash"]
