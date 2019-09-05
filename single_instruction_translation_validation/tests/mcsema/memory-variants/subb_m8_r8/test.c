void leaf() {
  __asm__("subb %cl, -4(%rbp)");
  }

void main() {
  leaf();
}