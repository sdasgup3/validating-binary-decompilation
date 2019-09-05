void leaf() {
  __asm__("rcrl $0x77, %ebx");
  }

void main() {
  leaf();
}