void leaf() {
  __asm__("testq %rcx, -4(%rbp)");
  }

void main() {
  leaf();
}