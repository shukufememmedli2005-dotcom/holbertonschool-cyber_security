#!/usr/bin/env python3
import sys

def error():
    print("Usage: read_write_heap.py pid search_string replace_string")
    sys.exit(1)

if len(sys.argv) != 4:
    error()

pid = sys.argv[1]
search = sys.argv[2].encode()
replace = sys.argv[3].encode()

if len(replace) > len(search):
    error()

# heap region tap
maps_file = f"/proc/{pid}/maps"
mem_file = f"/proc/{pid}/mem"

heap_start = None
heap_end = None

with open(maps_file, 'r') as f:
    for line in f:
        if "[heap]" in line:
            parts = line.split()
            addr = parts[0]
            heap_start, heap_end = addr.split('-')
            heap_start = int(heap_start, 16)
            heap_end = int(heap_end, 16)
            break

if heap_start is None:
    print("Heap not found")
    sys.exit(1)

# heap oxu və yaz
with open(mem_file, 'rb+') as mem:
    mem.seek(heap_start)
    heap = mem.read(heap_end - heap_start)

    index = heap.find(search)

    if index == -1:
        print("String not found")
        sys.exit(1)

    print(f"Found at offset: {hex(heap_start + index)}")

    mem.seek(heap_start + index)
    mem.write(replace + b'\x00' * (len(search) - len(replace)))

    print("Replaced successfully")
