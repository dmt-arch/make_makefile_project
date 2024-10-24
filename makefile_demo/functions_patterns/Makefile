# SRCS := $(wildcard *.cpp *.c)
SRCS := $(wildcard *.cpp)
BINS := $(SRCS:%.cpp=%)
OBJS := $(SRCS:%.cpp=%.o)


all: $(BINS) $(OBJS)

%: %.o
	@echo "generting binaries"
	g++ $< -o $@

%.o: %.cpp
	@echo "generting object files"
	g++ -c $< -o $@

# t1: t1.o
# 	g++ $< -o $@

# t2: t2.o
# 	g++ $< -o $@

# t3: t3.o
# 	g++ $< -o $@

# t1.o: t1.cpp
# 	g++ -c $< -o $@

# t2.o: t2.cpp
# 	g++ -c $< -o $@

# t3.o: t3.cpp
# 	g++ -c $< -o $@

clean:
	rm $(BINS) $(OBJS)