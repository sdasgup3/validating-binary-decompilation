void leaf() {
  __asm__("rcrl $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}