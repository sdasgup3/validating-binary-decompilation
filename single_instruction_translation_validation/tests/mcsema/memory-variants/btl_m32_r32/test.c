void leaf() {
  __asm__("btl %ecx, -4(%rbp)");
  }

void main() {
  leaf();
}