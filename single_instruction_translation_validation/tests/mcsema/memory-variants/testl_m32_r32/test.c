void leaf() {
  __asm__("testl %ecx, -4(%rbp)");
  }

void main() {
  leaf();
}