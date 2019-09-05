void leaf() {
  __asm__("orl $0x77, %eax");
  }

void main() {
  leaf();
}