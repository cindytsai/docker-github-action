FROM cindytsai/eureka:python3.8

# Copy project into /workspace 
RUN mkdir /workspace
COPY $GITHUB_WORKSPACE/ /workspace/

# Run print_env.sh to print PATH and LD_LIBRARY_PATH
RUN chmod +x /workspace/print_env.sh
RUN sh /workspace/print_env.sh

# Go to workspace to compile code
#RUN cd /workspace/src
#RUN ["cat", "file1.txt"]

RUN cd /workspace/src
RUN ["gcc", "-o", "main", "main.cpp"]
CMD ["./main"]
