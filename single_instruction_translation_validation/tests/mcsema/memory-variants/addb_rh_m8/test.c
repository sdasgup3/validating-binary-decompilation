void leaf() {
  __asm__("addb -4(%rbp), %ah");
  }

void main() {
  leaf();
}