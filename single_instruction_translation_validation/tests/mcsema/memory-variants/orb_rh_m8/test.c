void leaf() {
  __asm__("orb -4(%rbp), %ah");
  }

void main() {
  leaf();
}