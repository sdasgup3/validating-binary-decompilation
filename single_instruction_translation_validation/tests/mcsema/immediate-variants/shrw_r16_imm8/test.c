void leaf() {
  __asm__("shrw $0x77, %bx");
  }

void main() {
  leaf();
}