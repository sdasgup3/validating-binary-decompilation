void leaf() {
  __asm__("testl $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}