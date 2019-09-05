void leaf() {
  __asm__("testl $0x77, %eax");
  }

void main() {
  leaf();
}