void leaf() {
  __asm__("rcrl $0x1, %ebx");
  }

void main() {
  leaf();
}