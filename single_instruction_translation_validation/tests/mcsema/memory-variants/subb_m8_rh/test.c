void leaf() {
  __asm__("subb %ah, -4(%rbp)");
  }

void main() {
  leaf();
}