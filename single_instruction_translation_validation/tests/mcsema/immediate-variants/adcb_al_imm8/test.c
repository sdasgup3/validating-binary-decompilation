void leaf() {
  __asm__("adcb $0x77, %al");
  }

void main() {
  leaf();
}