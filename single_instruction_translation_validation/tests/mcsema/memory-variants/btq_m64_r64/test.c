void leaf() {
  __asm__("btq %rcx, -4(%rbp)");
  }

void main() {
  leaf();
}