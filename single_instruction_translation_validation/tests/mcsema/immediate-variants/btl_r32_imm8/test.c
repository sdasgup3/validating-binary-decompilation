void leaf() {
  __asm__("btl $0x77, %ebx");
  }

void main() {
  leaf();
}