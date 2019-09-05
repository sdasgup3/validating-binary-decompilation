void leaf() {
  __asm__("sbbq %rcx, -4(%rbp)");
  }

void main() {
  leaf();
}