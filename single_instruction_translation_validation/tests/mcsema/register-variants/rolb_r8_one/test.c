void leaf() {
  __asm__("rolb $0x1, %bl");
  }

void main() {
  leaf();
}