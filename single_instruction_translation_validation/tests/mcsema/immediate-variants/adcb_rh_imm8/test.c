void leaf() {
  __asm__("adcb $0x77, %ah");
  }

void main() {
  leaf();
}