void leaf() {
  __asm__("testw $0x77, %ax");
  }

void main() {
  leaf();
}