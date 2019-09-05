void leaf() {
  __asm__("xaddb %cl, -4(%rbp)");
  }

void main() {
  leaf();
}