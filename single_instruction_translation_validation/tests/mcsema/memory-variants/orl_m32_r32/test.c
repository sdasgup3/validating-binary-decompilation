void leaf() {
  __asm__("orl %ecx, -4(%rbp)");
  }

void main() {
  leaf();
}