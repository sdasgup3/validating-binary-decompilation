void leaf() {
  __asm__("xaddq %rcx, -4(%rbp)");
  }

void main() {
  leaf();
}