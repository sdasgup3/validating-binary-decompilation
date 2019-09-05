void leaf() {
  __asm__("addw $0x77, %ax");
  }

void main() {
  leaf();
}