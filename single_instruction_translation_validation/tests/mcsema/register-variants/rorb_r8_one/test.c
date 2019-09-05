void leaf() {
  __asm__("rorb $0x1, %bl");
  }

void main() {
  leaf();
}