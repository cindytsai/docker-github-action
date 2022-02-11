FROM cindytsai/eureka:python3.8

RUN mkdir /workspace
COPY $GITHUB_WORKSPACE/* /workspace/
RUN chmod +x /workspace/print_env.sh
RUN sh /workspace/print_env.sh
RUN apt update && apt install -y tree
RUN tree