void leaf() {
  __asm__("rcrl $0x1, -4(%rbp)");
  }

void main() {
  leaf();
}