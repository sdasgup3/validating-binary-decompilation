void leaf() {
  __asm__("shrw $0x1, %bx");
  }

void main() {
  leaf();
}