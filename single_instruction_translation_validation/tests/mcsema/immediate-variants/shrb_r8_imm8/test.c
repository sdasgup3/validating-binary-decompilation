void leaf() {
  __asm__("shrb $0x77, %bl");
  }

void main() {
  leaf();
}