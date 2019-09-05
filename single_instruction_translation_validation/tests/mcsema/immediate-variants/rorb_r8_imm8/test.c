void leaf() {
  __asm__("rorb $0x77, %bl");
  }

void main() {
  leaf();
}