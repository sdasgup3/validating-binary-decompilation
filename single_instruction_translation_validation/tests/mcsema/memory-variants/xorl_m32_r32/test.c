void leaf() {
  __asm__("xorl %ecx, -4(%rbp)");
  }

void main() {
  leaf();
}