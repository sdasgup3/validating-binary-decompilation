void leaf() {
  __asm__("salb $0x77, %bl");
  }

void main() {
  leaf();
}