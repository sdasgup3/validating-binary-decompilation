void leaf() {
  __asm__("adcl $0x77, %ebx");
  }

void main() {
  leaf();
}