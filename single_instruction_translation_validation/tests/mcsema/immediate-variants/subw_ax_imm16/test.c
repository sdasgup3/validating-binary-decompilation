void leaf() {
  __asm__("subw $0x77, %ax");
  }

void main() {
  leaf();
}