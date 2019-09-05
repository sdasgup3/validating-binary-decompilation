void leaf() {
  __asm__("rolb $0x77, %bl");
  }

void main() {
  leaf();
}