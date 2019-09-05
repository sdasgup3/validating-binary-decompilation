void leaf() {
  __asm__("orb $0x77, %bl");
  }

void main() {
  leaf();
}