void leaf() {
  __asm__("addq %rcx, -4(%rbp)");
  }

void main() {
  leaf();
}