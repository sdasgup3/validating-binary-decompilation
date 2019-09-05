void leaf() {
  __asm__("cmpxchgq %rcx, -4(%rbp)");
  }

void main() {
  leaf();
}