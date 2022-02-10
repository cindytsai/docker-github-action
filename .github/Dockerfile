FROM cindytsai/eureka:python3.8

RUN mkdir /workspace
COPY $GITHUB_WORKSPACE/* /workspace
RUN ls
RUN chmod +x /workspace/print_env.sh
RUN tree