void leaf() {
  __asm__("subq %rcx, -4(%rbp)");
  }

void main() {
  leaf();
}