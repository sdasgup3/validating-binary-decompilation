void leaf() {
  __asm__("xorb -4(%rbp), %ah");
  }

void main() {
  leaf();
}