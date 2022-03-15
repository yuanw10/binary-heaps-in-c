HEAPM = ../../CI/objects/heap/heapM.o
RHEAPM = ../../CI/objects/heap/rheapM.o

all: array_list.o heap.o rheap heap
	
rheap: heap.o array_list.o $(RHEAPM)
	gcc --std=c18 heap.o array_list.o $(RHEAPM) -o rheap

heap: heap.o array_list.o $(HEAPM)
	gcc --std=c18 heap.o array_list.o $(HEAPM) -o heap

heap.o: heap.c
	gcc --std=c18 -c -Ilib heap.c

array_list.o: lib/array_list.c
	gcc --std=c18 -c -Ilib lib/array_list.c

clean:
	rm *.o heap rheap
