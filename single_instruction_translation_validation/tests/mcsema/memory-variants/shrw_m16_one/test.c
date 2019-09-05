void leaf() {
  __asm__("shrw $0x1, -4(%rbp)");
  }

void main() {
  leaf();
}