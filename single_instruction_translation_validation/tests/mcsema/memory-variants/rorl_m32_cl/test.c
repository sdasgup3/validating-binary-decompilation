void leaf() {
  __asm__("rorl %cl, -4(%rbp)");
  }

void main() {
  leaf();
}