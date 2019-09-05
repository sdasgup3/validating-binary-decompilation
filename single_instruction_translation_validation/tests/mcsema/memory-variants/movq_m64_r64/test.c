void leaf() {
  __asm__("movq %rcx, -4(%rbp)");
  }

void main() {
  leaf();
}