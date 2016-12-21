CC=gcc
LDFLAG=-Ltarget/release -lconst
SOURCE=main.c
TARGET=const
RM=rm
RMFLAG=-f

all:
	cargo build --release
	$(CC) -o $(TARGET) $(SOURCE) $(LDFLAG)

clean:
	cargo clean
	$(RM) $(RMFLAG) $(TARGET)
