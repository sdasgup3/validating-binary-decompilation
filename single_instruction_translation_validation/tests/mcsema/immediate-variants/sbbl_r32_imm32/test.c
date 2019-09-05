void leaf() {
  __asm__("sbbl $0x77, %ebx");
  }

void main() {
  leaf();
}