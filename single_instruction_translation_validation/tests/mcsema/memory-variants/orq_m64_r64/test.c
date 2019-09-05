void leaf() {
  __asm__("orq %rcx, -4(%rbp)");
  }

void main() {
  leaf();
}