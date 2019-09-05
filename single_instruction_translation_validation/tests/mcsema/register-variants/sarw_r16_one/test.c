void leaf() {
  __asm__("sarw $0x1, %bx");
  }

void main() {
  leaf();
}