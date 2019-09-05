void leaf() {
  __asm__("xaddb %ah, -4(%rbp)");
  }

void main() {
  leaf();
}