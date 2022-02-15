FROM cindytsai/eureka:python3.8

RUN mkdir /workspace
COPY $GITHUB_WORKSPACE/* /workspace/
RUN chmod +x /workspace/print_env.sh
RUN sh /workspace/print_env.sh
RUN cd /workspace/src
RUN cat file1.txt
RUN gcc --version
RUN cd /workspace/src
RUN gcc -o main main.cpp
RUN ./main
