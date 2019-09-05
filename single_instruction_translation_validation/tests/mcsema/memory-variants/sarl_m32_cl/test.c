void leaf() {
  __asm__("sarl %cl, -4(%rbp)");
  }

void main() {
  leaf();
}