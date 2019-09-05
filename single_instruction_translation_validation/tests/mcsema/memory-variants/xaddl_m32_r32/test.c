void leaf() {
  __asm__("xaddl %ecx, -4(%rbp)");
  }

void main() {
  leaf();
}