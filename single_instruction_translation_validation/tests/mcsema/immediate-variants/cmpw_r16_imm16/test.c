void leaf() {
  __asm__("cmpw $0x77, %bx");
  }

void main() {
  leaf();
}