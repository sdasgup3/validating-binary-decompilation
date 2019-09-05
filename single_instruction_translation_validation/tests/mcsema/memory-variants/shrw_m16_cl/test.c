void leaf() {
  __asm__("shrw %cl, -4(%rbp)");
  }

void main() {
  leaf();
}