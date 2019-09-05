void leaf() {
  __asm__("rcll $0x1, %ebx");
  }

void main() {
  leaf();
}