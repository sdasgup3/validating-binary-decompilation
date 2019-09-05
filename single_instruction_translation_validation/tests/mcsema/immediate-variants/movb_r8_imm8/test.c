void leaf() {
  __asm__("movb $0x77, %bl");
  }

void main() {
  leaf();
}