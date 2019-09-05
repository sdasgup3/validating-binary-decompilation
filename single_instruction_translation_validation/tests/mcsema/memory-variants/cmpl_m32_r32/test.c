void leaf() {
  __asm__("cmpl %ecx, -4(%rbp)");
  }

void main() {
  leaf();
}