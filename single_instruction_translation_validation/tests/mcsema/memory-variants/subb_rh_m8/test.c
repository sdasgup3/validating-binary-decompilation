void leaf() {
  __asm__("subb -4(%rbp), %ah");
  }

void main() {
  leaf();
}