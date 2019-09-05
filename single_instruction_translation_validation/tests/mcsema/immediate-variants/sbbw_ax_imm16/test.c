void leaf() {
  __asm__("sbbw $0x77, %ax");
  }

void main() {
  leaf();
}