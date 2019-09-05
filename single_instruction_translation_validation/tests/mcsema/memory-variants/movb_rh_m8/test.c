void leaf() {
  __asm__("movb -4(%rbp), %ah");
  }

void main() {
  leaf();
}