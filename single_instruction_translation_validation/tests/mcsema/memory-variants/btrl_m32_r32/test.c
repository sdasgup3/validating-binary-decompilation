void leaf() {
  __asm__("btrl %ecx, -4(%rbp)");
  }

void main() {
  leaf();
}