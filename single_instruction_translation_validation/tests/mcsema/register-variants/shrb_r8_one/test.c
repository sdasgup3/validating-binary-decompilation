void leaf() {
  __asm__("shrb $0x1, %bl");
  }

void main() {
  leaf();
}