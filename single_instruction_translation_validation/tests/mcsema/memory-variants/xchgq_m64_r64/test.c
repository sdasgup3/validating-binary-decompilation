void leaf() {
  __asm__("xchgq %rcx, -4(%rbp)");
  }

void main() {
  leaf();
}