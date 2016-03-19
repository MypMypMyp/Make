./bin/ps: ./obj/main.o ./obj/ps.o ./bin
	gcc ./obj/main.o ./obj/ps.o -o ./bin/ps

./obj/main.o: ./src/main.c ./obj
	gcc -c ./src/main.c -o ./obj/main.o -Wall

./obj/ps.o: ./src/ps.c ./obj
	gcc -c ./src/ps.c -o ./obj/ps.o -Wall

./bin:  
	mkdir bin

./obj: 
	mkdir obj

.PHONY: clean
clean:
	rm -f -r bin/ obj/
