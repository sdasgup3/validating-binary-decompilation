void leaf() {
  __asm__("addb %ah, -4(%rbp)");
  }

void main() {
  leaf();
}