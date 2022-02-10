FROM cindytsai/eureka:python3.8

COPY $GITHUB_WORKSPACE/* /work

RUN chmod +x /work/print_env.sh
RUN tree
ENTRYPOINT ["/work/print_env.sh"]