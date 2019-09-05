void leaf() {
  __asm__("sbbw $0x77, %bx");
  }

void main() {
  leaf();
}