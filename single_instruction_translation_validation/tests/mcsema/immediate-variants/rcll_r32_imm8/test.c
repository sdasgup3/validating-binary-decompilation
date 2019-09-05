void leaf() {
  __asm__("rcll $0x77, %ebx");
  }

void main() {
  leaf();
}