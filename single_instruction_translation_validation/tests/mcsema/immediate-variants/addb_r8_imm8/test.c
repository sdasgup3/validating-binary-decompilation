void leaf() {
  __asm__("addb $0x77, %bl");
  }

void main() {
  leaf();
}