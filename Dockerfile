FROM cindytsai/eureka:python3.8

RUN mkdir /workspace
COPY $GITHUB_WORKSPACE/* /workspace/
RUN chmod +x /workspace/print_env.sh
RUN sh /workspace/print_env.sh
RUN apt -y install tree
RUN tree