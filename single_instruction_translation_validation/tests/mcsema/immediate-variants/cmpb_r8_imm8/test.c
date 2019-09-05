void leaf() {
  __asm__("cmpb $0x77, %bl");
  }

void main() {
  leaf();
}