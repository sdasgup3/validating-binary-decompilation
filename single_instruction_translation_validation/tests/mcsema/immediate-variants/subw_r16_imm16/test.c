void leaf() {
  __asm__("subw $0x77, %bx");
  }

void main() {
  leaf();
}