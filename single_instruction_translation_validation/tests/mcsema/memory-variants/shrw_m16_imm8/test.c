void leaf() {
  __asm__("shrw $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}