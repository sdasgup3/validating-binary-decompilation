void leaf() {
  __asm__("sarw $0x77, %bx");
  }

void main() {
  leaf();
}