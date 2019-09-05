void leaf() {
  __asm__("addb %cl, -4(%rbp)");
  }

void main() {
  leaf();
}