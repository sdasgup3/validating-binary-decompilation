void leaf() {
  __asm__("cmpq %rcx, -4(%rbp)");
  }

void main() {
  leaf();
}