void leaf() {
  __asm__("xorq %rcx, -4(%rbp)");
  }

void main() {
  leaf();
}