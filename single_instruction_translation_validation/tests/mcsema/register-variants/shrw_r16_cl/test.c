void leaf() {
  __asm__("shrw %cl, %bx");
  }

void main() {
  leaf();
}