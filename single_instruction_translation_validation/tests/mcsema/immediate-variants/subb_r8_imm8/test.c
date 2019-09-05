void leaf() {
  __asm__("subb $0x77, %bl");
  }

void main() {
  leaf();
}