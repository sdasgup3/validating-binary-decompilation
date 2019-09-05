void leaf() {
  __asm__("xorl $0x77, %eax");
  }

void main() {
  leaf();
}